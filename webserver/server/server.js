let express = require("express");
var cors = require('cors');
const fs = require('fs');


const path = require('path');
let app = express();

app.use(cors())

app.use(express.static(path.join(__dirname, 'public')));

app.listen(81, function() {
    
});

app.get('/getAvailableModels', function(req, res){
    availableModels = getDirectories('./public/lstm')
    res.send(availableModels)
});

app.get('/getAvailableModels/gru', function(req, res){
    availableModels = getDirectories('./public/gru')
    res.send(availableModels)
});

app.get('/getAvailableModels/gru-solar', function(req, res){
    availableModels = getDirectories('./public/gru-solar')
    res.send(availableModels)
});

app.get('/getAvailableModels/lstm-solar', function(req, res){
    availableModels = getDirectories('./public/lstm-solar')
    res.send(availableModels)
});

function getDirectories(path){
    return fs.readdirSync(path).filter(function(file) {
        return fs.statSync(path+'/'+file).isDirectory();
    })
}