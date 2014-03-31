//http://jsfiddle.net/8QFYL/4/
// A promise is an object which represents the future output of some computation which hasn't necessarily completed yet. We can tell the promise what to do with the output once it resolves to a concrete value by attaching success handlers. If a success handler is attached to an already resolved promise, it should execute immediately.

// Implement a simple promise based callback system, with a Promise class that has at least the methods success and resolve.

// The success method tells the promise what to do once it resolves to its actual value. The resolve method sets the actual value onto the promise.

function Promise(){
   this._pipeline = [];
}

 Promise.prototype = {
   
    resolve : function(val){
        this.complete('resolve' , val);
    },
        
    success : function(onSuccess){
        this._pipeline.push({ resolve : onSuccess });
    },
     
    complete : function(which, val){
        if(which === 'resolve'){
          this.success = function(resolve){ resolve && resolve(val); }
        } 
        var pipe, i = 0;
        while (pipe = this._pipeline[i++]) { pipe[which] && pipe[which](val); }
        delete this._pipeline;
    }

}



var foo = new Promise();
var bar = new Promise();

foo.resolve('hello');

setTimeout(function(){
  console.log("starting the timeout")
  bar.resolve('world');
}, 500);

foo.success(function(result){
  console.log(result);
});

bar.success(function(result){
  console.log(result);
});
