function fn(){
    var config = {
        name : "Zhanarbek",
        baseURL : "https://reqres.in/api"
    };

    var env = karate.env;
    karate.log('The value of env is: ', env)

    if(env === 'qa'){
        config.baseURL = "https://reqres.in/qa"
    }
    else if(env === 'dev'){
        config.baseURL = "https://reqres.in/dev"
    }
    else{
        console.log("Hi, brothers what do you do?")
        config.baseURL = "https://reqres.in/"
    }

    karate.configure('connectTimeout',500);
    karate.configure('readTimeout',500);

    return config;
}