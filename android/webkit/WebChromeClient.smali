.class public Landroid/webkit/WebChromeClient;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebChromeClient$CustomViewCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "window"

    .prologue
    .line 138
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5
    .parameter "consoleMessage"

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onDisplaySoftKeyboard(Landroid/webkit/WebView;Z)V
    .registers 3
    .parameter "view"
    .parameter "isTextView"

    .prologue
    .line 356
    return-void
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 230
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 231
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 1

    .prologue
    .line 257
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 3
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 252
    return-void
.end method

.method public onHideCustomView()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onJsTimeout()Z
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 32
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 8
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 244
    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 245
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 46
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .parameter "view"
    .parameter "title"

    .prologue
    .line 39
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4
    .parameter "view"
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 55
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 129
    return-void
.end method

.method public onSelectionDone(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 353
    return-void
.end method

.method public onSelectionStart(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    .line 346
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 90
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, uploadFile:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 336
    return-void
.end method
