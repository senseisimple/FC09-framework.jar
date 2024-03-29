.class final Lcom/android/internal/app/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = 0x1


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 170
    .end local p0
    :goto_5
    :pswitch_5
    return-void

    .line 164
    .restart local p0
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/DialogInterface;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_5

    .line 168
    .restart local p0
    :pswitch_18
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_5

    .line 159
    :pswitch_data_20
    .packed-switch -0x3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_18
    .end packed-switch
.end method
