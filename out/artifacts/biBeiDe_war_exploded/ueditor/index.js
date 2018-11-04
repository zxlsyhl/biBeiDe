$(function(){

    //富文本编辑器
    UE.getEditor('editor');

    UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
    UE.Editor.prototype.getActionUrl = function(action){
        alert(action);
        if(action == '/resource/upload/images'){
            return basePath+'resource/upload/images';
        }else{
            return this._bkGetActionUrl.call(this, action);
        }
    }
});