.class final Landroid/widget/BounceController$BOUNCETWEENER$2;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/widget/BounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .registers 10
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const v6, 0x3f23d70a

    const/high16 v5, 0x3f00

    const v4, 0x3ea3d70a

    const v3, 0x3e23d70a

    const v2, 0x3da3d70a

    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, ret:F
    if-eqz p1, :cond_5b

    .line 452
    const v1, 0x400ccccd

    mul-float/2addr p2, v1

    .line 454
    const v1, 0x3f4ccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2c

    .line 455
    mul-float v1, p2, p2

    div-float v0, v1, v6

    .line 477
    :goto_20
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_9d

    .line 478
    const/high16 v0, 0x3f80

    .line 482
    :cond_28
    :goto_28
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    return v1

    .line 456
    :cond_2c
    const v1, 0x3fcccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3d

    .line 457
    const v1, 0x3f99999a

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v4

    add-float v0, v1, v5

    goto :goto_20

    .line 458
    :cond_3d
    const/high16 v1, 0x4000

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4f

    .line 459
    const v1, 0x3fe66666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v3

    const/high16 v2, 0x3f40

    add-float v0, v1, v2

    goto :goto_20

    .line 461
    :cond_4f
    const v1, 0x40066666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f60

    add-float v0, v1, v2

    goto :goto_20

    .line 464
    :cond_5b
    const/high16 v1, 0x4040

    mul-float/2addr p2, v1

    .line 466
    const v1, 0x3fcccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6e

    .line 467
    const v1, 0x3f4ccccd

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float v0, v1, v6

    goto :goto_20

    .line 468
    :cond_6e
    const v1, 0x4019999a

    cmpg-float v1, p2, v1

    if-gez v1, :cond_7e

    .line 469
    const/high16 v1, 0x4000

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v4

    add-float v0, v1, v5

    goto :goto_20

    .line 470
    :cond_7e
    const v1, 0x40333333

    cmpg-float v1, p2, v1

    if-gez v1, :cond_91

    .line 471
    const v1, 0x40266666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v3

    const/high16 v2, 0x3f40

    add-float v0, v1, v2

    goto :goto_20

    .line 473
    :cond_91
    const v1, 0x4039999a

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f60

    add-float v0, v1, v2

    goto :goto_20

    .line 479
    :cond_9d
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_28

    .line 480
    const/4 v0, 0x0

    goto :goto_28
.end method
