.class public Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mMenuType:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 3
    .parameter
    .parameter "menuType"

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1151
    iput p2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    .line 1152
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 4
    .parameter "position"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOffset()I
    .registers 3

    .prologue
    .line 1155
    iget v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1156
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #calls: Lcom/android/internal/view/menu/MenuBuilder;->getNumIconMenuItemsShown()I
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuBuilder;->access$300(Lcom/android/internal/view/menu/MenuBuilder;)I

    move-result v0

    .line 1158
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;->mMenuType:I

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
