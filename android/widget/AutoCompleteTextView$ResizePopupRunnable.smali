.class Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1508
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1511
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1512
    return-void
.end method
