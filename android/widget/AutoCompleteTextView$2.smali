.class Landroid/widget/AutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AutoCompleteTextView;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1334
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$2;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1337
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$2;->this$0:Landroid/widget/AutoCompleteTextView;

    #calls: Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1000(Landroid/widget/AutoCompleteTextView;)Landroid/view/View;

    move-result-object v0

    .line 1338
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1339
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$2;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1341
    :cond_13
    return-void
.end method
