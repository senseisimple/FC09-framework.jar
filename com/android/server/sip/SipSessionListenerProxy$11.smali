.class Lcom/android/server/sip/SipSessionListenerProxy$11;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$errorCode:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$session:Landroid/net/sip/ISipSession;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$session:Landroid/net/sip/ISipSession;

    iput p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$errorCode:I

    iput-object p4, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #getter for: Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$session:Landroid/net/sip/ISipSession;

    iget v3, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$errorCode:I

    iget-object v4, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/net/sip/ISipSessionListener;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 191
    :goto_f
    return-void

    .line 188
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string/jumbo v2, "onRegistrationFailed()"

    #calls: Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f
.end method
