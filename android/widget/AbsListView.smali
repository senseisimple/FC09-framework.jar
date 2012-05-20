.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$TwFlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BOUNCE:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MAX_NUM_POINTERS:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Landroid/widget/BounceController;

.field protected mBounceEnabled:Z

.field protected mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerDownY:[F

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 664
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 213
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 228
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 238
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 244
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 249
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 254
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 259
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 264
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 274
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 321
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 352
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 390
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 410
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 431
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 434
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 437
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 479
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 498
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 508
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 556
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 633
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 639
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2258
    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_64

    iput-object v1, p0, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 665
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 667
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 668
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 669
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 670
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 671
    return-void

    .line 2258
    nop

    :array_64
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 674
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 675
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 678
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 228
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 238
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 244
    new-instance v9, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 249
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 254
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 259
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 264
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 269
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 274
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 321
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 352
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 390
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 410
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 412
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 431
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 434
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 437
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 479
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 498
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 508
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 556
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 633
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 639
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2258
    const/4 v9, 0x6

    new-array v9, v9, [F

    fill-array-data v9, :array_d0

    iput-object v9, p0, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 679
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 681
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 684
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 685
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_75

    .line 686
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 689
    :cond_75
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 692
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 693
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 695
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 696
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 698
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 699
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 701
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 703
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 705
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 707
    .local v1, color:I
    const-string v9, "SPH-D700"

    const-string v10, "SC-02B"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cc

    .line 708
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 713
    :goto_b5
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 714
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 716
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 717
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 719
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 720
    return-void

    .line 710
    .end local v3           #enableFastScroll:Z
    .end local v5           #smoothScrollbar:Z
    :cond_cc
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    goto :goto_b5

    .line 2258
    :array_d0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 1148
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 4969
    if-nez p1, :cond_8

    const/4 v4, 0x1

    .line 4987
    :goto_7
    return v4

    .line 4970
    :cond_8
    const/4 v2, 0x1

    .line 4972
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4973
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_6b

    .line 4974
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4975
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 4976
    const/4 v2, 0x0

    .line 4977
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    :cond_3f
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_68

    .line 4981
    const/4 v2, 0x0

    .line 4982
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v3           #view:Landroid/view/View;
    :cond_6b
    move v4, v2

    .line 4987
    goto :goto_7
.end method

.method private clearScrollingCache()V
    .registers 2

    .prologue
    .line 3928
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 3929
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3944
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3945
    return-void
.end method

.method private contentFits()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 770
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 771
    .local v0, childCount:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v1, :cond_c

    move v1, v3

    .line 775
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_26

    sub-int v1, v0, v4

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    if-gt v1, v2, :cond_26

    move v1, v4

    goto :goto_b

    :cond_26
    move v1, v3

    goto :goto_b
.end method

.method private createScrollingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3920
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_11

    .line 3921
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3922
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3923
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 3925
    :cond_11
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 10
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4715
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_5a

    .line 4716
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4717
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4718
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4720
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090070

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 4725
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4727
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4728
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4729
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4730
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4731
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4732
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4733
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4734
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4735
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4736
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 4737
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4738
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 4740
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_5a
    if-eqz p1, :cond_65

    .line 4741
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030071

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4745
    :goto_64
    return-void

    .line 4743
    :cond_65
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030072

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_64
.end method

.method private dismissPopup()V
    .registers 2

    .prologue
    .line 4491
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 4492
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4494
    :cond_9
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 1689
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1690
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1691
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1692
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1694
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_1c
    return-void
.end method

.method private finishGlows()V
    .registers 2

    .prologue
    .line 4991
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_e

    .line 4992
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 4993
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 4995
    :cond_e
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 4537
    sparse-switch p2, :sswitch_data_78

    .line 4563
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4539
    :sswitch_b
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 4540
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4541
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 4542
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4566
    .local v1, dY:I
    :goto_23
    sub-int v2, v0, v4

    .line 4567
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4568
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 4545
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2d
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4546
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 4547
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4548
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4549
    .restart local v1       #dY:I
    goto :goto_23

    .line 4551
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_46
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 4552
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4553
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4554
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4555
    .restart local v1       #dY:I
    goto :goto_23

    .line 4557
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_5f
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4558
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 4559
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4560
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4561
    .restart local v1       #dY:I
    goto :goto_23

    .line 4537
    :sswitch_data_78
    .sparse-switch
        0x11 -> :sswitch_46
        0x21 -> :sswitch_5f
        0x42 -> :sswitch_b
        0x82 -> :sswitch_2d
    .end sparse-switch
.end method

.method private initAbsListView()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 725
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 726
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 727
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 728
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 730
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 731
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 732
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 733
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 734
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 735
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 737
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 738
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    .line 739
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 741
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 3181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 3183
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3184
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_3a

    .line 3188
    if-nez v2, :cond_3b

    const/4 v3, 0x1

    move v0, v3

    .line 3189
    .local v0, newPointerIndex:I
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3190
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3191
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3192
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3193
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_36

    .line 3194
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3203
    :cond_36
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3205
    .end local v0           #newPointerIndex:I
    :cond_3a
    return-void

    :cond_3b
    move v0, v5

    .line 3188
    goto :goto_17
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2024
    const/4 v6, 0x0

    .line 2026
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_f

    .line 2027
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2030
    :cond_f
    if-nez v6, :cond_1b

    .line 2031
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2032
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2034
    :cond_1b
    if-eqz v6, :cond_21

    .line 2035
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 2037
    :cond_21
    return v6
.end method

.method private positionPopup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4510
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4511
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 4512
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 4515
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 4516
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_36

    .line 4517
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4522
    :goto_35
    return-void

    .line 4520
    :cond_36
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_35
.end method

.method private positionSelector(IIII)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1617
    return-void
.end method

.method private showPopup()V
    .registers 2

    .prologue
    .line 4501
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 4502
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4503
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 4505
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 4507
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .registers 10
    .parameter "deltaY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2197
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2198
    .local v0, distance:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eqz v4, :cond_3f

    move v3, v7

    .line 2199
    .local v3, overscroll:Z
    :goto_b
    if-nez v3, :cond_11

    iget v4, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v4, :cond_43

    .line 2200
    :cond_11
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2201
    if-eqz v3, :cond_41

    const/4 v4, 0x5

    :goto_17
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2202
    iput p1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2203
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2207
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_26

    .line 2208
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2210
    :cond_26
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2211
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2212
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_37

    .line 2213
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2215
    :cond_37
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2218
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v7

    .line 2222
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_3e
    return v4

    .end local v3           #overscroll:Z
    :cond_3f
    move v3, v6

    .line 2198
    goto :goto_b

    .line 2201
    .restart local v3       #overscroll:Z
    :cond_41
    const/4 v4, 0x3

    goto :goto_17

    :cond_43
    move v4, v6

    .line 2222
    goto :goto_3e
.end method

.method private useDefaultSelector()V
    .registers 3

    .prologue
    .line 952
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 954
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3212
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 3213
    .local v2, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3214
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3216
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_b

    .line 3227
    :cond_a
    return-void

    .line 3220
    :cond_b
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v2, :cond_a

    .line 3221
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3222
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3223
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3225
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3220
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 4825
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4787
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 4706
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 4846
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .registers 3

    .prologue
    .line 4751
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    .line 4752
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4753
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4754
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4755
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4758
    :cond_1d
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1226
    .local v1, count:I
    if-lez v1, :cond_6f

    .line 1227
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_6d

    .line 1228
    mul-int/lit8 v2, v1, 0x64

    .line 1230
    .local v2, extent:I
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1231
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1232
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1233
    .local v3, height:I
    if-lez v3, :cond_20

    .line 1234
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1237
    :cond_20
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1238
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1239
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1240
    if-lez v3, :cond_3a

    .line 1241
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1249
    :cond_3a
    move v5, v2

    .line 1252
    .local v5, retVal:I
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v8, :cond_6b

    .line 1253
    iget-object v8, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v8, v8, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_66

    invoke-virtual {p0}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_66

    .line 1256
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v9, v9, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1258
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1261
    .end local v4           #ratio:F
    :cond_66
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1269
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_6a
    return v8

    .restart local v0       #bottom:I
    .restart local v2       #extent:I
    .restart local v3       #height:I
    .restart local v5       #retVal:I
    .restart local v6       #top:I
    .restart local v7       #view:Landroid/view/View;
    :cond_6b
    move v8, v5

    .line 1264
    goto :goto_6a

    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_6d
    move v8, v10

    .line 1266
    goto :goto_6a

    :cond_6f
    move v8, v9

    .line 1269
    goto :goto_6a
.end method

.method protected computeVerticalScrollOffset()I
    .registers 19

    .prologue
    .line 1274
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    .line 1275
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 1276
    .local v2, childCount:I
    if-ltz v5, :cond_b0

    if-lez v2, :cond_b0

    .line 1281
    const/4 v9, 0x0

    .line 1282
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_8c

    .line 1283
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1284
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1285
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1286
    .local v6, height:I
    if-lez v6, :cond_56

    .line 1289
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v15, v0

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x42c8

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1293
    :cond_56
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v14, v0

    if-eqz v14, :cond_8a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iget v14, v14, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_8a

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iget v10, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1295
    .local v10, savedBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1296
    .local v11, shrinkedScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    const/4 v15, 0x0

    iput v15, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1298
    .local v8, normalScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iput v10, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1300
    sub-int v4, v8, v11

    .line 1302
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedBounceExtent:F
    .end local v11           #shrinkedScrollExtent:I
    :cond_8a
    move v14, v9

    .line 1323
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_8b
    return v14

    .line 1312
    .restart local v9       #retVal:I
    :cond_8c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v3, v0

    .line 1313
    .local v3, count:I
    if-nez v5, :cond_a5

    .line 1314
    const/4 v7, 0x0

    .line 1320
    .local v7, index:I
    :goto_94
    int-to-float v14, v5

    int-to-float v15, v2

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_8b

    .line 1315
    .end local v7           #index:I
    :cond_a5
    add-int v14, v5, v2

    if-ne v14, v3, :cond_ab

    .line 1316
    move v7, v3

    .restart local v7       #index:I
    goto :goto_94

    .line 1318
    .end local v7           #index:I
    :cond_ab
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_94

    .line 1323
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_b0
    const/4 v14, 0x0

    goto :goto_8b
.end method

.method protected computeVerticalScrollRange()I
    .registers 4

    .prologue
    .line 1329
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_28

    .line 1330
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1331
    .local v0, result:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_27

    .line 1333
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1338
    :cond_27
    :goto_27
    return v0

    .line 1336
    .end local v0           #result:I
    :cond_28
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_27
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1936
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 1621
    const/4 v2, 0x0

    .line 1622
    .local v2, saveCount:I
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_51

    const/4 v5, 0x1

    move v0, v5

    .line 1623
    .local v0, clipToPadding:Z
    :goto_b
    if-eqz v0, :cond_36

    .line 1624
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1625
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1626
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1627
    .local v4, scrollY:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1630
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1633
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_36
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1634
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_3d

    .line 1635
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1638
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1640
    if-eqz v1, :cond_45

    .line 1641
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1644
    :cond_45
    if-eqz v0, :cond_50

    .line 1645
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1646
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1648
    :cond_50
    return-void

    .line 1622
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_51
    const/4 v5, 0x0

    move v0, v5

    goto :goto_b
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 2102
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 3016
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3019
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_34

    .line 3020
    iget-object v5, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v6, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 3022
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 3023
    .local v1, overscrollMode:I
    if-eqz v1, :cond_21

    const/4 v5, 0x1

    if-ne v1, v5, :cond_34

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v5

    if-nez v5, :cond_34

    .line 3025
    :cond_21
    iget-object v5, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_d2

    .line 3026
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    .line 3033
    .end local v1           #overscrollMode:I
    :cond_34
    :goto_34
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v5, :cond_b9

    .line 3034
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 3035
    .local v3, scrollY:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_77

    .line 3036
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3037
    .local v2, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 3043
    .local v4, width:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_4e

    .line 3047
    :cond_4e
    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3053
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3054
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 3055
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3057
    :cond_74
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3059
    .end local v2           #restoreCount:I
    .end local v4           #width:I
    :cond_77
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b9

    .line 3060
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3061
    .restart local v2       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 3062
    .restart local v4       #width:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 3068
    .local v0, height:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_8f

    .line 3073
    :cond_8f
    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v6, v3

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3076
    const/high16 v5, 0x4334

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3080
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3081
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 3082
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3084
    :cond_b6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3087
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #scrollY:I
    .end local v4           #width:I
    :cond_b9
    iget-object v5, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v5, :cond_d1

    .line 3088
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 3089
    .restart local v3       #scrollY:I
    if-eqz v3, :cond_e7

    .line 3091
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3092
    .restart local v2       #restoreCount:I
    int-to-float v5, v3

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3093
    iget-object v5, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v5, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3094
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3099
    .end local v2           #restoreCount:I
    .end local v3           #scrollY:I
    :cond_d1
    :goto_d1
    return-void

    .line 3027
    .restart local v1       #overscrollMode:I
    :cond_d2
    iget-object v5, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_34

    .line 3028
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    goto/16 :goto_34

    .line 3096
    .end local v1           #overscrollMode:I
    .restart local v3       #scrollY:I
    :cond_e7
    iget-object v5, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v5, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_d1
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 1795
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 1796
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1797
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1799
    :cond_10
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 4225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4226
    .local v0, childCount:I
    if-nez v0, :cond_8

    .line 4231
    :goto_7
    return v2

    .line 4230
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4231
    .local v1, motionRow:I
    if-eq v1, v2, :cond_10

    move v2, v1

    goto :goto_7

    :cond_10
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    goto :goto_7
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 4836
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 4841
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1373
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1374
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1375
    .local v2, fadeEdge:F
    if-nez v1, :cond_d

    move v5, v2

    .line 1385
    :goto_c
    return v5

    .line 1378
    :cond_d
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_19

    .line 1379
    const/high16 v5, 0x3f80

    goto :goto_c

    .line 1382
    :cond_19
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1383
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 1384
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1385
    .local v3, fadeLength:F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_3a

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_c

    :cond_3a
    move v5, v2

    goto :goto_c
.end method

.method public getBounceController()Landroid/widget/BounceController;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    return-object v0
.end method

.method public getCacheColorHint()I
    .registers 2

    .prologue
    .line 4902
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 2042
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 940
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 943
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 944
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 949
    :goto_12
    return-void

    .line 947
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method getFooterViewsCount()I
    .registers 2

    .prologue
    .line 4167
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 4157
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .registers 2

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1487
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 1488
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1490
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1743
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 4875
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1185
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 1186
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1188
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1343
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1344
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1345
    .local v1, fadeEdge:F
    if-nez v0, :cond_d

    move v4, v1

    .line 1367
    :goto_c
    return v4

    .line 1348
    :cond_d
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_14

    .line 1349
    const/high16 v4, 0x3f80

    goto :goto_c

    .line 1357
    :cond_14
    const/4 v3, 0x0

    .line 1358
    .local v3, top:I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v4, :cond_27

    .line 1359
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1360
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-lt v3, v4, :cond_2f

    .line 1361
    const/4 v4, 0x0

    goto :goto_c

    .line 1363
    :cond_27
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1366
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1367
    .local v2, fadeLength:F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_40

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_c

    :cond_40
    move v4, v1

    goto :goto_c
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 4870
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4356
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 4357
    .local v0, count:I
    if-lez v0, :cond_9e

    .line 4364
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v3, :cond_2b

    .line 4366
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4368
    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_22

    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_26

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-lt v3, v4, :cond_26

    .line 4371
    :cond_22
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4467
    :cond_25
    :goto_25
    return-void

    .line 4375
    :cond_26
    iget v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v3, :pswitch_data_ba

    .line 4423
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9a

    .line 4425
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 4428
    .local v1, newPos:I
    if-lt v1, v0, :cond_39

    .line 4429
    sub-int v1, v0, v5

    .line 4431
    :cond_39
    if-gez v1, :cond_3c

    .line 4432
    const/4 v1, 0x0

    .line 4436
    :cond_3c
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4438
    .local v2, selectablePos:I
    if-ltz v2, :cond_90

    .line 4439
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 4377
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_46
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 4382
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4383
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_25

    .line 4389
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v1

    .line 4390
    .restart local v1       #newPos:I
    if-ltz v1, :cond_2b

    .line 4392
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4393
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_2b

    .line 4395
    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 4397
    iget-wide v3, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7c

    .line 4400
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4408
    :goto_78
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 4404
    :cond_7c
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_78

    .line 4416
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_7f
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4417
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_25

    .line 4443
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_90
    invoke-virtual {p0, v1, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4444
    if-ltz v2, :cond_9e

    .line 4445
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 4452
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9a
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_25

    .line 4460
    :cond_9e
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b8

    const/4 v3, 0x3

    :goto_a3
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4461
    iput v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4462
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 4463
    iput v8, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 4464
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 4465
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4466
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_25

    :cond_b8
    move v3, v5

    .line 4460
    goto :goto_a3

    .line 4375
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_46
        :pswitch_7f
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .registers 2

    .prologue
    .line 4764
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 4181
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2a

    .line 4182
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 4183
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4185
    :cond_e
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1c

    .line 4186
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4188
    :cond_1c
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4189
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 4190
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 4191
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4193
    :cond_2a
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 4238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4239
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 4240
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4241
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4242
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 5

    .prologue
    .line 868
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_11

    .line 869
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 871
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_22

    .line 872
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 874
    :cond_22
    return-void
.end method

.method public isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 808
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .registers 2

    .prologue
    .line 4573
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 887
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 851
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 964
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 934
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method keyPressed()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1751
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1786
    :cond_d
    :goto_d
    return-void

    .line 1755
    :cond_e
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1756
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1757
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_20
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1760
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1762
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3c

    .line 1763
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1764
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1766
    :cond_3c
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1768
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 1769
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1770
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_58

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_58

    .line 1771
    if-eqz v1, :cond_7a

    .line 1772
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1778
    :cond_58
    :goto_58
    if-eqz v1, :cond_d

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_d

    .line 1779
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6a

    .line 1780
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 1782
    :cond_6a
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1783
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 1775
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_7a
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_58
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 1448
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 1555
    aput-boolean v3, p2, v3

    .line 1558
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1561
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_29

    .line 1567
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1574
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_22

    .line 1575
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1576
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_21

    .line 1577
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1598
    :cond_21
    :goto_21
    return-object v0

    .line 1584
    :cond_22
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 1585
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_21

    .line 1588
    .end local v0           #child:Landroid/view/View;
    :cond_29
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1589
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_21

    .line 1590
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_21
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1842
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 1844
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1845
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1b

    .line 1846
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1847
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1b

    .line 1848
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1851
    :cond_1b
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 12
    .parameter "consistency"

    .prologue
    .line 4938
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 4940
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_42

    const/4 v7, 0x1

    move v1, v7

    .line 4942
    .local v1, checkLayout:Z
    :goto_a
    if-eqz v1, :cond_68

    .line 4944
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$3900(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 4945
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 4946
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v2, :cond_45

    .line 4947
    aget-object v7, v0, v3

    if-eqz v7, :cond_3f

    .line 4948
    const/4 v4, 0x0

    .line 4949
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 4940
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_42
    const/4 v7, 0x0

    move v1, v7

    goto :goto_a

    .line 4956
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_45
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4000(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4957
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_52

    const/4 v4, 0x0

    .line 4958
    :cond_52
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4100(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 4959
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 4960
    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v2, :cond_68

    .line 4961
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_65

    const/4 v4, 0x0

    .line 4960
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 4965
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_68
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .registers 9
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1804
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_a

    .line 1806
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1832
    :goto_9
    return-object v4

    .line 1812
    :cond_a
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1817
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1818
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1819
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_19
    if-ltz v2, :cond_20

    .line 1820
    aget v4, v3, v2

    if-ne v4, v1, :cond_2c

    .line 1821
    move v0, v2

    .line 1827
    :cond_20
    if-ltz v0, :cond_2a

    .line 1828
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    move-object v4, v3

    .line 1832
    goto :goto_9

    .line 1819
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_19
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 4651
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4655
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4656
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_23

    .line 4657
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 4658
    new-instance v0, Landroid/widget/AbsListView$3;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4692
    :cond_23
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4694
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4695
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4697
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1855
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 1858
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1861
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 1863
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1864
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_22

    .line 1865
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1866
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_22

    .line 1867
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1868
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1871
    :cond_22
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .parameter "hint"

    .prologue
    .line 4471
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 4472
    sparse-switch p1, :sswitch_data_34

    .line 4484
    :cond_6
    :goto_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 4485
    return-void

    .line 4474
    :sswitch_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4475
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_6

    .line 4479
    :sswitch_1d
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4480
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_6

    .line 4484
    :cond_31
    const/4 v0, 0x0

    goto :goto_a

    .line 4472
    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0x4 -> :sswitch_d
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 4828
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 4829
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4830
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 4832
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1193
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1194
    if-eqz p1, :cond_12

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1195
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 1197
    :cond_12
    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 4768
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4770
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1d

    .line 4771
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4780
    :cond_1d
    :goto_1d
    return-void

    .line 4775
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4776
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_1d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3106
    .local v0, action:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v8, :cond_16

    .line 3107
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v8, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3108
    .local v1, intercepted:Z
    if-eqz v1, :cond_16

    move v8, v10

    .line 3177
    .end local v1           #intercepted:Z
    :goto_15
    return v8

    .line 3113
    :cond_16
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_90

    :cond_1b
    :goto_1b
    :pswitch_1b
    move v8, v9

    .line 3177
    goto :goto_15

    .line 3115
    :pswitch_1d
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3116
    .local v4, touchMode:I
    const/4 v8, 0x6

    if-eq v4, v8, :cond_25

    const/4 v8, 0x5

    if-ne v4, v8, :cond_29

    .line 3117
    :cond_25
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v8, v10

    .line 3118
    goto :goto_15

    .line 3121
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 3122
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 3123
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3125
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 3126
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_5a

    if-ltz v2, :cond_5a

    .line 3129
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3130
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3131
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3132
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3133
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3134
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3135
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 3137
    .end local v5           #v:Landroid/view/View;
    :cond_5a
    const/high16 v8, -0x8000

    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3138
    if-ne v4, v12, :cond_1b

    move v8, v10

    .line 3139
    goto :goto_15

    .line 3145
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_62
    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_a2

    goto :goto_1b

    .line 3147
    :pswitch_68
    iget v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 3153
    .local v3, pointerIndex:I
    if-gez v3, :cond_72

    move v8, v10

    goto :goto_15

    .line 3155
    :cond_72
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 3156
    .restart local v7       #y:I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    move v8, v10

    .line 3157
    goto :goto_15

    .line 3165
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_83
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3166
    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3167
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1b

    .line 3172
    :pswitch_8b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1b

    .line 3113
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_83
        :pswitch_62
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_8b
    .end packed-switch

    .line 3145
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_68
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2070
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2075
    sparse-switch p1, :sswitch_data_4a

    .line 2095
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_9
    return v1

    .line 2078
    :sswitch_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v5

    .line 2079
    goto :goto_9

    .line 2081
    :cond_12
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2085
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2086
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_45

    .line 2087
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2088
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2090
    :cond_45
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    move v1, v5

    .line 2091
    goto :goto_9

    .line 2075
    :sswitch_data_4a
    .sparse-switch
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1408
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1409
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1410
    if-eqz p1, :cond_1e

    .line 1411
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1412
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 1413
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1415
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 1418
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1419
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1421
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 1422
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1392
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    .line 1393
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 1395
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1396
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1397
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1398
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1399
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1400
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 6
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 3002
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 3004
    if-eqz p4, :cond_d

    .line 3006
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 3007
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3010
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 3011
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1118
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    move-object v1, v0

    .line 1120
    .local v1, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1121
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1123
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1125
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_36

    .line 1126
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1127
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1128
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1129
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1130
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1142
    :cond_2d
    :goto_2d
    iget-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1145
    return-void

    .line 1131
    :cond_36
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2d

    .line 1132
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1134
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1135
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1136
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1137
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1138
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1139
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_2d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 16

    .prologue
    const-wide/16 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1060
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1062
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    .line 1064
    .local v6, superState:Landroid/os/Parcelable;
    new-instance v5, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v5, v6}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1066
    .local v5, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_51

    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v9, :cond_51

    move v2, v12

    .line 1067
    .local v2, haveChildren:Z
    :goto_1b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v3

    .line 1068
    .local v3, selectedId:J
    iput-wide v3, v5, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1069
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1071
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-ltz v9, :cond_53

    .line 1073
    iget v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1074
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1075
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1102
    :goto_39
    const/4 v9, 0x0

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1103
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v9, :cond_50

    .line 1104
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1105
    .local v7, textFilter:Landroid/widget/EditText;
    if-eqz v7, :cond_50

    .line 1106
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1107
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_50

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1113
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v7           #textFilter:Landroid/widget/EditText;
    :cond_50
    return-object v5

    .end local v2           #haveChildren:Z
    .end local v3           #selectedId:J
    :cond_51
    move v2, v11

    .line 1066
    goto :goto_1b

    .line 1077
    .restart local v2       #haveChildren:Z
    .restart local v3       #selectedId:J
    :cond_53
    if-eqz v2, :cond_78

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_78

    .line 1087
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1088
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1089
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1090
    .local v1, firstPos:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v1, v9, :cond_6d

    .line 1091
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int v1, v9, v12

    .line 1093
    :cond_6d
    iput v1, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1094
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_39

    .line 1096
    .end local v1           #firstPos:I
    .end local v8           #v:Landroid/view/View;
    :cond_78
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1097
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1098
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->position:I

    goto :goto_39
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1652
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 1653
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1654
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1657
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    .line 1658
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 1660
    :cond_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4795
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 4796
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4797
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4798
    .local v2, showing:Z
    if-nez v2, :cond_32

    if-lez v1, :cond_32

    .line 4800
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4801
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4807
    :cond_1e
    :goto_1e
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_31

    .line 4808
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4810
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3d

    .line 4811
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4818
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_31
    return-void

    .line 4802
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_32
    if-eqz v2, :cond_1e

    if-nez v1, :cond_1e

    .line 4804
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4805
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1e

    .line 4813
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 63
    .parameter "ev"

    .prologue
    .line 2262
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2265
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_12
    const/4 v4, 0x1

    .line 2996
    :goto_13
    return v4

    .line 2265
    :cond_14
    const/4 v4, 0x0

    goto :goto_13

    .line 2268
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    if-eqz v4, :cond_2d

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    .line 2270
    .local v36, intercepted:Z
    if-eqz v36, :cond_2d

    .line 2271
    const/4 v4, 0x1

    goto :goto_13

    .line 2275
    .end local v36           #intercepted:Z
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 2280
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-nez v4, :cond_41

    .line 2281
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2283
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2289
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_8d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_74

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8d

    .line 2294
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 2297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8d

    .line 2298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2305
    :cond_8d
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    packed-switch v4, :pswitch_data_b62

    .line 2996
    :cond_95
    :goto_95
    :pswitch_95
    const/4 v4, 0x1

    goto/16 :goto_13

    .line 2307
    :pswitch_98
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b74

    .line 2321
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2322
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v59, v0

    .line 2323
    .local v59, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2329
    .local v60, y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    const/4 v5, 0x5

    if-ge v4, v5, :cond_d5

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v5, v0

    move/from16 v0, v60

    int-to-float v0, v0

    move v6, v0

    aput v6, v4, v5

    .line 2339
    :cond_d5
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2345
    .local v41, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_10d

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_10d

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 2354
    :cond_10d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_19d

    .line 2359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_249

    .line 2360
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_20a

    if-ltz v41, :cond_20a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_20a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_20a

    .line 2365
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_15a

    .line 2368
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2370
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2447
    :cond_16b
    :goto_16b
    if-ltz v41, :cond_184

    .line 2449
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2450
    .local v57, v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2452
    .end local v57           #v:Landroid/view/View;
    :cond_184
    move/from16 v0, v59

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 2453
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2454
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2455
    const/high16 v4, -0x8000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2470
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :cond_19d
    :goto_19d
    :pswitch_19d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2471
    .local v54, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2473
    .local v53, pointerId:I
    if-ltz v54, :cond_95

    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_95

    if-ltz v53, :cond_95

    const/4 v4, 0x5

    move/from16 v0, v53

    move v1, v4

    if-ge v0, v1, :cond_95

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v53

    goto/16 :goto_95

    .line 2309
    .end local v53           #pointerId:I
    .end local v54           #pointerIndex:I
    :pswitch_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v4}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    if-eqz v4, :cond_1e1

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2313
    :cond_1e1
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2314
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2315
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2316
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto :goto_19d

    .line 2372
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_20a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_215

    if-gez v41, :cond_215

    .line 2376
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 2379
    :cond_215
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16b

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_22c

    .line 2382
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2384
    :cond_22c
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2385
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2386
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2387
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_16b

    .line 2391
    :cond_249
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_28f

    if-ltz v41, :cond_28f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_28f

    .line 2395
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_27c

    .line 2398
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2400
    :cond_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_16b

    .line 2402
    :cond_28f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_29a

    if-gez v41, :cond_29a

    .line 2406
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 2409
    :cond_29a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16b

    .line 2411
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2412
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2413
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2414
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2415
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_16b

    .line 2482
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :pswitch_2c2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v54

    .line 2488
    .restart local v54       #pointerIndex:I
    if-gez v54, :cond_2d3

    const/4 v4, 0x1

    goto/16 :goto_13

    .line 2489
    :cond_2d3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_2e9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    if-eqz v4, :cond_2e9

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 2493
    :cond_2e9
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2494
    .restart local v60       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move v4, v0

    sub-int v25, v60, v4

    .line 2495
    .local v25, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b7a

    :pswitch_304
    goto/16 :goto_95

    .line 2501
    :pswitch_306
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    .line 2507
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_95

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_95

    .line 2508
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_95

    .line 2510
    move/from16 v56, v25

    .line 2511
    .local v56, tempY:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2512
    .local v20, childCount:I
    if-lez v20, :cond_95

    .line 2513
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    sub-int v32, v4, v5

    .line 2514
    .local v32, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v30

    .line 2515
    .local v30, firstTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v37

    .line 2516
    .local v37, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    .line 2517
    .local v39, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    sub-int v27, v4, v5

    .line 2519
    .local v27, end:I
    if-gez v56, :cond_3d3

    .line 2520
    const/4 v4, 0x1

    sub-int v4, v32, v4

    neg-int v4, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v56

    .line 2525
    :goto_374
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v29, v0

    .line 2527
    .local v29, firstPosition:I
    if-nez v29, :cond_3a4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move/from16 v0, v30

    move v1, v4

    if-lt v0, v1, :cond_3a4

    if-ltz v25, :cond_3a4

    .line 2529
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_3de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_3de

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2536
    :cond_3a4
    :goto_3a4
    add-int v4, v29, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_95

    move/from16 v0, v37

    move/from16 v1, v27

    if-gt v0, v1, :cond_95

    if-gtz v25, :cond_95

    .line 2538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_3e7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_3e7

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto/16 :goto_95

    .line 2522
    .end local v29           #firstPosition:I
    :cond_3d3
    const/4 v4, 0x1

    sub-int v4, v32, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v56

    goto :goto_374

    .line 2532
    .restart local v29       #firstPosition:I
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_3a4

    .line 2541
    :cond_3e7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto/16 :goto_95

    .line 2557
    .end local v20           #childCount:I
    .end local v27           #end:I
    .end local v29           #firstPosition:I
    .end local v30           #firstTop:I
    .end local v32           #height:I
    .end local v37           #lastBottom:I
    .end local v39           #listPadding:Landroid/graphics/Rect;
    .end local v56           #tempY:I
    :pswitch_3f1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_95

    .line 2561
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v4, v0

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-nez v4, :cond_417

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    move v5, v0

    if-le v4, v5, :cond_417

    .line 2563
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2566
    :cond_417
    move/from16 v55, v25

    .line 2567
    .local v55, rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2568
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_506

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2571
    .local v34, incrementalDeltaY:I
    :goto_432
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    if-ltz v4, :cond_50a

    .line 2572
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int v40, v4, v5

    .line 2579
    .local v40, motionIndex:I
    :goto_445
    const/16 v43, 0x0

    .line 2580
    .local v43, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2581
    .local v42, motionView:Landroid/view/View;
    if-eqz v42, :cond_455

    .line 2582
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v43

    .line 2586
    :cond_455
    const/16 v18, 0x0

    .line 2587
    .local v18, atEdge:Z
    if-eqz v34, :cond_463

    .line 2588
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 2592
    :cond_463
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2593
    if-eqz v42, :cond_4fe

    .line 2596
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v44

    .line 2597
    .local v44, motionViewRealTop:I
    if-eqz v18, :cond_4f5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-nez v4, :cond_4f5

    .line 2600
    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    sub-int v5, v44, v43

    sub-int v6, v4, v5

    .line 2602
    .local v6, overscroll:I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v12, v0

    const/4 v13, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2604
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_4b3

    .line 2606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2609
    :cond_4b3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2610
    .local v49, overscrollMode:I
    if-eqz v49, :cond_4c5

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_4f5

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_4f5

    .line 2613
    :cond_4c5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2614
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2615
    if-lez v55, :cond_512

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4f5

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2628
    .end local v49           #overscrollMode:I
    :cond_4f5
    :goto_4f5
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2629
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2631
    .end local v44           #motionViewRealTop:I
    :cond_4fe
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_95

    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    :cond_506
    move/from16 v34, v25

    .line 2568
    goto/16 :goto_432

    .line 2576
    .restart local v34       #incrementalDeltaY:I
    :cond_50a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    div-int/lit8 v40, v4, 0x2

    .restart local v40       #motionIndex:I
    goto/16 :goto_445

    .line 2620
    .restart local v6       #overscroll:I
    .restart local v18       #atEdge:Z
    .restart local v42       #motionView:Landroid/view/View;
    .restart local v43       #motionViewPrevTop:I
    .restart local v44       #motionViewRealTop:I
    .restart local v49       #overscrollMode:I
    :cond_512
    if-gez v55, :cond_4f5

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4f5

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_4f5

    .line 2636
    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    .end local v44           #motionViewRealTop:I
    .end local v49           #overscrollMode:I
    .end local v55           #rawDeltaY:I
    :pswitch_537
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_95

    .line 2637
    move/from16 v55, v25

    .line 2638
    .restart local v55       #rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2639
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_5f7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2641
    .restart local v34       #incrementalDeltaY:I
    :goto_55c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v48, v0

    .line 2642
    .local v48, oldScroll:I
    sub-int v47, v48, v34

    .line 2643
    .local v47, newScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-le v0, v1, :cond_5fb

    const/4 v4, 0x1

    move/from16 v46, v4

    .line 2645
    .local v46, newDirection:I
    :goto_571
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    if-nez v4, :cond_57e

    .line 2646
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2649
    :cond_57e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    move v0, v4

    move/from16 v1, v46

    if-eq v0, v1, :cond_600

    .line 2651
    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v34, v0

    .line 2652
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 2655
    if-eqz v34, :cond_59e

    .line 2656
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 2660
    :cond_59e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2661
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_5e9

    .line 2662
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2666
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v41

    .line 2668
    .restart local v41       #motionPosition:I
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2669
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2670
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2671
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2672
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2699
    .end local v41           #motionPosition:I
    .end local v42           #motionView:Landroid/view/View;
    :cond_5e9
    :goto_5e9
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2700
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_95

    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    :cond_5f7
    move/from16 v34, v25

    .line 2639
    goto/16 :goto_55c

    .line 2643
    .restart local v34       #incrementalDeltaY:I
    .restart local v47       #newScroll:I
    .restart local v48       #oldScroll:I
    :cond_5fb
    const/4 v4, -0x1

    move/from16 v46, v4

    goto/16 :goto_571

    .line 2675
    .restart local v46       #newDirection:I
    :cond_600
    const/4 v8, 0x0

    move/from16 v0, v34

    neg-int v0, v0

    move v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v15, v0

    const/16 v16, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v16}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2677
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2678
    .restart local v49       #overscrollMode:I
    if-eqz v49, :cond_62c

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_657

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_657

    .line 2681
    :cond_62c
    if-lez v55, :cond_675

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_654

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2692
    :cond_654
    :goto_654
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2694
    :cond_657
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_5e9

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5e9

    .line 2686
    :cond_675
    if-gez v55, :cond_654

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_654

    .line 2689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_654

    .line 2709
    .end local v25           #deltaY:I
    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    .end local v49           #overscrollMode:I
    .end local v54           #pointerIndex:I
    .end local v55           #rawDeltaY:I
    .end local v60           #y:I
    :pswitch_69e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b8a

    .line 2848
    :goto_6a6
    :pswitch_6a6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_6c4

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2856
    :cond_6c4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2858
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2859
    .local v31, handler:Landroid/os/Handler;
    if-eqz v31, :cond_6d8

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2863
    :cond_6d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_6ed

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2865
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2868
    :cond_6ed
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_95

    .line 2713
    .end local v31           #handler:Landroid/os/Handler;
    :pswitch_6f5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v41, v0

    .line 2714
    .restart local v41       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2715
    .local v19, child:Landroid/view/View;
    if-eqz v19, :cond_81e

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_81e

    .line 2716
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_71f

    .line 2717
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2720
    :cond_71f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object v4, v0

    if-nez v4, :cond_735

    .line 2721
    new-instance v4, Landroid/widget/AbsListView$PerformClick;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 2724
    :cond_735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v51, v0

    .line 2725
    .local v51, performClick:Landroid/widget/AbsListView$PerformClick;
    move-object/from16 v0, v19

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/AbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2726
    move/from16 v0, v41

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 2727
    invoke-virtual/range {v51 .. v51}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2729
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2731
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_75f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_802

    .line 2732
    :cond_75f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2733
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_777

    .line 2734
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-nez v4, :cond_7f4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    :goto_771
    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2737
    :cond_777
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_7fb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7fb

    .line 2739
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2740
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2741
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2742
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2743
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 2744
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-eqz v4, :cond_7d9

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 2747
    .local v24, d:Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_7d9

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move v4, v0

    if-eqz v4, :cond_7d9

    .line 2748
    check-cast v24, Landroid/graphics/drawable/TransitionDrawable;

    .end local v24           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2751
    :cond_7d9
    new-instance v4, Landroid/widget/AbsListView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2764
    :goto_7f1
    const/4 v4, 0x1

    goto/16 :goto_13

    .line 2734
    :cond_7f4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    goto/16 :goto_771

    .line 2762
    :cond_7fb
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_7f1

    .line 2765
    .end local v31           #handler:Landroid/os/Handler;
    :cond_802
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_81e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_81e

    .line 2766
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2769
    .end local v51           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_81e
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_6a6

    .line 2772
    .end local v19           #child:Landroid/view/View;
    .end local v41           #motionPosition:I
    :pswitch_826
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2773
    .restart local v20       #childCount:I
    if-lez v20, :cond_93c

    .line 2774
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v28

    .line 2775
    .local v28, firstChildTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v38

    .line 2776
    .local v38, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 2777
    .local v22, contentTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v21, v4, v5

    .line 2778
    .local v21, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_892

    move/from16 v0, v28

    move/from16 v1, v22

    if-lt v0, v1, :cond_892

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ge v4, v5, :cond_892

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-gt v0, v1, :cond_892

    .line 2781
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2782
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6a6

    .line 2784
    :cond_892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2785
    .local v58, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2786
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2792
    .local v35, initialVelocity:I
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_92d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_8d5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    sub-int v4, v22, v4

    move/from16 v0, v28

    move v1, v4

    if-eq v0, v1, :cond_92d

    :cond_8d5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_8ef

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    add-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-eq v0, v1, :cond_92d

    .line 2797
    :cond_8ef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_90a

    .line 2802
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_91f

    .line 2803
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2808
    :cond_90a
    :goto_90a
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_6a6

    .line 2805
    :cond_91f
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_90a

    .line 2812
    :cond_92d
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2813
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6a6

    .line 2817
    .end local v21           #contentBottom:I
    .end local v22           #contentTop:I
    .end local v28           #firstChildTop:I
    .end local v35           #initialVelocity:I
    .end local v38           #lastChildBottom:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_93c
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2818
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6a6

    .line 2823
    .end local v20           #childCount:I
    :pswitch_94b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_966

    .line 2828
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_9ab

    .line 2829
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2834
    :cond_966
    :goto_966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2835
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2836
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2838
    .restart local v35       #initialVelocity:I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2839
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_9b9

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_6a6

    .line 2831
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_9ab
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_966

    .line 2842
    .restart local v35       #initialVelocity:I
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_9b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_6a6

    .line 2880
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_9c3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_b9a

    .line 2901
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2902
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2903
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2904
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_9f3

    .line 2905
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2907
    :cond_9f3
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2909
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2910
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_a07

    .line 2911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2914
    :cond_a07
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_a1c

    .line 2915
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2916
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2920
    .end local v31           #handler:Landroid/os/Handler;
    .end local v42           #motionView:Landroid/view/View;
    :cond_a1c
    :goto_a1c
    :pswitch_a1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_a33

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2924
    :cond_a33
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_95

    .line 2882
    :pswitch_a3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_a56

    .line 2887
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_a5f

    .line 2888
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2893
    :cond_a56
    :goto_a56
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_a1c

    .line 2890
    :cond_a5f
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_a56

    .line 2933
    :pswitch_a6d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2934
    .restart local v54       #pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2935
    .restart local v53       #pointerId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v52

    .line 2937
    .local v52, pointerCount:I
    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_ae4

    .line 2938
    const/4 v4, 0x3

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_ae4

    .line 2939
    const/16 v23, 0x0

    .line 2940
    .local v23, countActive:I
    const/16 v26, 0x0

    .line 2942
    .local v26, direction:I
    const/16 v33, 0x0

    .local v33, i:I
    :goto_a8f
    const/4 v4, 0x3

    move/from16 v0, v33

    move v1, v4

    if-ge v0, v1, :cond_ad0

    .line 2943
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v50

    .line 2944
    .local v50, pId:I
    if-ltz v50, :cond_aa5

    const/4 v4, 0x5

    move/from16 v0, v50

    move v1, v4

    if-lt v0, v1, :cond_aa8

    .line 2942
    :cond_aa5
    :goto_aa5
    add-int/lit8 v33, v33, 0x1

    goto :goto_a8f

    .line 2948
    :cond_aa8
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v5, v0

    aget v5, v5, v50

    sub-float v45, v4, v5

    .line 2950
    .local v45, move:F
    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-lez v4, :cond_aca

    .line 2951
    const/4 v4, 0x0

    cmpl-float v4, v45, v4

    if-lez v4, :cond_acd

    .line 2952
    add-int/lit8 v26, v26, 0x1

    .line 2957
    :cond_aca
    :goto_aca
    add-int/lit8 v23, v23, 0x1

    goto :goto_aa5

    .line 2954
    :cond_acd
    add-int/lit8 v26, v26, -0x1

    goto :goto_aca

    .line 2960
    .end local v45           #move:F
    .end local v50           #pId:I
    :cond_ad0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_ae4

    .line 2961
    const/4 v4, 0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_b44

    .line 2962
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 2970
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    :cond_ae4
    :goto_ae4
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2971
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v59, v0

    .line 2972
    .restart local v59       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v60, v0

    .line 2973
    .restart local v60       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2974
    .restart local v41       #motionPosition:I
    if-ltz v41, :cond_b5c

    .line 2976
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2977
    .restart local v57       #v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2978
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_95

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move/from16 v0, v41

    move v1, v4

    if-ge v0, v1, :cond_95

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 2980
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_95

    .line 2963
    .end local v41           #motionPosition:I
    .end local v57           #v:Landroid/view/View;
    .end local v59           #x:I
    .end local v60           #y:I
    .restart local v23       #countActive:I
    .restart local v26       #direction:I
    .restart local v33       #i:I
    :cond_b44
    const/4 v4, -0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_ae4

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_ae4

    .line 2983
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_b5c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_95

    .line 2305
    nop

    :pswitch_data_b62
    .packed-switch 0x0
        :pswitch_98
        :pswitch_69e
        :pswitch_2c2
        :pswitch_9c3
        :pswitch_95
        :pswitch_19d
        :pswitch_a6d
    .end packed-switch

    .line 2307
    :pswitch_data_b74
    .packed-switch 0x6
        :pswitch_1ca
    .end packed-switch

    .line 2495
    :pswitch_data_b7a
    .packed-switch 0x0
        :pswitch_306
        :pswitch_306
        :pswitch_306
        :pswitch_3f1
        :pswitch_304
        :pswitch_537
    .end packed-switch

    .line 2709
    :pswitch_data_b8a
    .packed-switch 0x0
        :pswitch_6f5
        :pswitch_6f5
        :pswitch_6f5
        :pswitch_826
        :pswitch_6a6
        :pswitch_94b
    .end packed-switch

    .line 2880
    :pswitch_data_b9a
    .packed-switch 0x5
        :pswitch_a3b
        :pswitch_a1c
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .parameter "isInTouchMode"

    .prologue
    .line 2226
    if-eqz p1, :cond_15

    .line 2228
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2232
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 2235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2251
    :cond_14
    :goto_14
    return-void

    .line 2238
    :cond_15
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2239
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 2240
    :cond_1d
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_26

    .line 2241
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2244
    :cond_26
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_14

    .line 2245
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2246
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 2247
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_14
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1875
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 1877
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_37

    move v0, v3

    .line 1879
    .local v0, touchMode:I
    :goto_c
    if-nez p1, :cond_39

    .line 1880
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1881
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_2b

    .line 1882
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1885
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 1886
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_2b

    .line 1887
    iput v3, p0, Landroid/view/View;->mScrollY:I

    .line 1888
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 1889
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1893
    :cond_2b
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1895
    if-ne v0, v4, :cond_34

    .line 1897
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 1921
    :cond_34
    :goto_34
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 1922
    return-void

    .end local v0           #touchMode:I
    :cond_37
    move v0, v4

    .line 1877
    goto :goto_c

    .line 1900
    .restart local v0       #touchMode:I
    :cond_39
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v1, :cond_44

    .line 1902
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 1906
    :cond_44
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_34

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    .line 1908
    if-ne v0, v4, :cond_53

    .line 1910
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_34

    .line 1914
    :cond_53
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 1915
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1916
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_34
.end method

.method public pointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2113
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2114
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 2115
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2116
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2119
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2120
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_14
    if-ltz v3, :cond_30

    .line 2121
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2122
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2d

    .line 2123
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2124
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2125
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2129
    .end local v0           #child:Landroid/view/View;
    :goto_2c
    return v4

    .line 2120
    .restart local v0       #child:Landroid/view/View;
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 2129
    .end local v0           #child:Landroid/view/View;
    :cond_30
    const/4 v4, -0x1

    goto :goto_2c
.end method

.method public pointToRowId(II)J
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2142
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 2143
    .local v0, position:I
    if-ltz v0, :cond_d

    .line 2144
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2146
    :goto_c
    return-wide v1

    :cond_d
    const-wide/high16 v1, -0x8000

    goto :goto_c
.end method

.method positionSelector(Landroid/view/View;)V
    .registers 8
    .parameter "sel"

    .prologue
    .line 1602
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1603
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1604
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 1607
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1608
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_30

    .line 1609
    if-nez v0, :cond_31

    const/4 v2, 0x1

    :goto_2b
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1610
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 1612
    :cond_30
    return-void

    .line 1609
    :cond_31
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public reclaimViews(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4913
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4914
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$3800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 4917
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v1, :cond_2e

    .line 4918
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4919
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 4921
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_2b

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 4922
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4923
    if-eqz v3, :cond_2b

    .line 4925
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4917
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4929
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_2e
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4930
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 4931
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 4

    .prologue
    .line 4201
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4202
    .local v0, position:I
    if-gez v0, :cond_6

    .line 4203
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4205
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4206
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4207
    return v0
.end method

.method reportScrollStateChange(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 3237
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_f

    .line 3238
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 3239
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 3240
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 3243
    :cond_f
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1201
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 1202
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1204
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 983
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 984
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 985
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 987
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1210
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1211
    iput v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1212
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1213
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1214
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1215
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1216
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1217
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1218
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1219
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1220
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1221
    return-void
.end method

.method resurrectSelection()Z
    .registers 21

    .prologue
    .line 4257
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 4259
    .local v4, childCount:I
    if-gtz v4, :cond_9

    .line 4260
    const/16 v18, 0x0

    .line 4351
    :goto_8
    return v18

    .line 4263
    :cond_9
    const/4 v14, 0x0

    .line 4265
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 4266
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 4267
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v8, v0

    .line 4268
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 4269
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 4271
    .local v7, down:Z
    if-lt v15, v8, :cond_cd

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_cd

    .line 4272
    move v13, v15

    .line 4274
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4275
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 4276
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 4279
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_be

    .line 4280
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 4336
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_66
    :goto_66
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4338
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4339
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4340
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 4341
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 4342
    if-lt v13, v8, :cond_143

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_143

    .line 4343
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4344
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 4345
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4349
    :goto_af
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4351
    if-ltz v13, :cond_146

    const/16 v18, 0x1

    goto/16 :goto_8

    .line 4281
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_be
    if-le v12, v5, :cond_66

    .line 4282
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_66

    .line 4286
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_cd
    if-ge v15, v8, :cond_fd

    .line 4288
    move v13, v8

    .line 4289
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_d1
    if-ge v9, v4, :cond_66

    .line 4290
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4291
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4293
    .local v16, top:I
    if-nez v9, :cond_ef

    .line 4295
    move/from16 v14, v16

    .line 4297
    if-gtz v8, :cond_e9

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_ef

    .line 4300
    :cond_e9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 4303
    :cond_ef
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_fa

    .line 4305
    add-int v13, v8, v9

    .line 4306
    move/from16 v14, v16

    .line 4307
    goto/16 :goto_66

    .line 4289
    :cond_fa
    add-int/lit8 v9, v9, 0x1

    goto :goto_d1

    .line 4311
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_fd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v10, v0

    .line 4312
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 4313
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 4315
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_10d
    if-ltz v9, :cond_66

    .line 4316
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4317
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4318
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 4320
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_138

    .line 4321
    move/from16 v14, v16

    .line 4322
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_132

    if-le v3, v5, :cond_138

    .line 4323
    :cond_132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 4327
    :cond_138
    if-gt v3, v5, :cond_140

    .line 4328
    add-int v13, v8, v9

    .line 4329
    move/from16 v14, v16

    .line 4330
    goto/16 :goto_66

    .line 4315
    :cond_140
    add-int/lit8 v9, v9, -0x1

    goto :goto_10d

    .line 4347
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_143
    const/4 v13, -0x1

    goto/16 :goto_af

    .line 4351
    :cond_146
    const/16 v18, 0x0

    goto/16 :goto_8
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4585
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v6

    .line 4643
    :goto_9
    return v4

    .line 4589
    :cond_a
    const/4 v2, 0x0

    .line 4590
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4591
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_88

    .line 4620
    :goto_f
    if-eqz v3, :cond_2a

    .line 4621
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4623
    move-object v1, p3

    .line 4624
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 4625
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4628
    :cond_23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4629
    .local v0, action:I
    packed-switch v0, :pswitch_data_aa

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2a
    :goto_2a
    move v4, v2

    .line 4643
    goto :goto_9

    .line 4598
    :sswitch_2c
    const/4 v3, 0x0

    .line 4599
    goto :goto_f

    .line 4601
    :sswitch_2e
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_52

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_52

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 4602
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_54

    .line 4604
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 4605
    const/4 v2, 0x1

    .line 4612
    :cond_52
    :goto_52
    const/4 v3, 0x0

    .line 4613
    goto :goto_f

    .line 4606
    :cond_54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_52

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_52

    .line 4608
    const/4 v2, 0x1

    .line 4609
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 4616
    :sswitch_6f
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_f

    .line 4631
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_72
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4632
    goto :goto_2a

    .line 4635
    :pswitch_79
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4636
    goto :goto_2a

    .line 4639
    :pswitch_80
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2a

    .line 4591
    nop

    :sswitch_data_88
    .sparse-switch
        0x4 -> :sswitch_2e
        0x13 -> :sswitch_2c
        0x14 -> :sswitch_2c
        0x15 -> :sswitch_2c
        0x16 -> :sswitch_2c
        0x17 -> :sswitch_2c
        0x3e -> :sswitch_6f
        0x42 -> :sswitch_2c
    .end sparse-switch

    .line 4629
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_72
        :pswitch_79
        :pswitch_80
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 4885
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1c

    .line 4886
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 4887
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4888
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 4889
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4888
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4891
    :cond_17
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 4893
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1c
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .parameter "onTop"

    .prologue
    .line 1706
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1707
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 646
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_c

    .line 647
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 651
    :cond_c
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 653
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v0, :cond_20

    .line 654
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 655
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->setEdgeGlows(Landroid/widget/EdgeGlow;Landroid/widget/EdgeGlow;)V

    .line 657
    :cond_20
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 788
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 789
    if-eqz p1, :cond_14

    .line 790
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_13

    .line 791
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 799
    :cond_13
    :goto_13
    return-void

    .line 794
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_13

    .line 795
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_13
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 5
    .parameter "filterText"

    .prologue
    .line 1160
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1161
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1164
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1166
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_39

    .line 1168
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_31

    .line 1169
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1170
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1174
    .end local v0           #f:Landroid/widget/Filter;
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1175
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1178
    :cond_39
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1431
    .local v0, changed:Z
    if-eqz v0, :cond_23

    .line 1435
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    move v1, v2

    .line 1436
    .local v1, visible:Z
    :goto_e
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1437
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 1441
    .end local v1           #visible:Z
    :cond_23
    return v0

    .line 1435
    :cond_24
    const/4 v2, 0x0

    move v1, v2

    goto :goto_e
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 860
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 861
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 862
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 745
    const/4 v3, 0x2

    if-eq p1, v3, :cond_34

    .line 746
    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_2c

    .line 747
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 748
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 750
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 752
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 753
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 756
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2c
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    .line 763
    :goto_30
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 764
    return-void

    .line 758
    :cond_34
    iput-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 759
    iput-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 761
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    goto :goto_30
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 5009
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$3802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 5010
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1789
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 1790
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 1791
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 904
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 905
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 907
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 908
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .parameter "resID"

    .prologue
    .line 1717
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1718
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "sel"

    .prologue
    .line 1721
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 1722
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1723
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1725
    :cond_f
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1726
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1727
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1728
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 1729
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 1730
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 1731
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 1732
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1733
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1734
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 839
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 840
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .parameter "stackFromBottom"

    .prologue
    .line 975
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 976
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 977
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 979
    :cond_9
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .parameter "textFilterEnabled"

    .prologue
    .line 921
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 922
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 4860
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 4861
    return-void
.end method

.method shouldShowSelector()Z
    .registers 2

    .prologue
    .line 1685
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 9
    .parameter "originalView"

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2048
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2f

    .line 2049
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2050
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2052
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_19

    .line 2053
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2056
    :cond_19
    if-nez v6, :cond_2d

    .line 2057
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2060
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_2d
    move v0, v6

    .line 2065
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 3907
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_1d

    .line 3908
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v0, :cond_15

    .line 3909
    new-instance v0, Landroid/widget/AbsListView$TwFlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3916
    :goto_f
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(II)V

    .line 3917
    return-void

    .line 3911
    :cond_15
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_f

    .line 3914
    :cond_1d
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    goto :goto_f
.end method

.method public smoothScrollToPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 3879
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 3880
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3882
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3883
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 3895
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 3896
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3898
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 3899
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 1668
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 1673
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1671
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 1668
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .registers 31
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3956
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 3957
    .local v6, childCount:I
    if-nez v6, :cond_9

    .line 3958
    const/16 v25, 0x1

    .line 4147
    :goto_8
    return v25

    .line 3961
    :cond_9
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    .line 3962
    .local v12, firstTop:I
    const/16 v25, 0x1

    sub-int v25, v6, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 3964
    .local v18, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3967
    .local v19, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v21, v25, v12

    .line 3968
    .local v21, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 3969
    .local v10, end:I
    sub-int v22, v18, v10

    .line 3971
    .local v22, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v26, v0

    sub-int v15, v25, v26

    .line 3972
    .local v15, height:I
    if-gez p1, :cond_101

    .line 3973
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3978
    :goto_6a
    if-gez p2, :cond_10f

    .line 3979
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3984
    :goto_7d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    .line 3987
    .local v11, firstPosition:I
    if-nez v11, :cond_11d

    .line 3988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v12, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 3992
    :goto_98
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12d

    .line 3993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 3998
    :goto_ba
    if-nez v11, :cond_150

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-lt v0, v1, :cond_150

    if-ltz p2, :cond_150

    .line 4003
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_13d

    .line 4004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4005
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_fb

    .line 4006
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4014
    :cond_fb
    :goto_fb
    if-eqz p2, :cond_14c

    const/16 v25, 0x1

    goto/16 :goto_8

    .line 3975
    .end local v11           #firstPosition:I
    :cond_101
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_6a

    .line 3981
    :cond_10f
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_7d

    .line 3990
    .restart local v11       #firstPosition:I
    :cond_11d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_98

    .line 3995
    :cond_12d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_ba

    .line 4009
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_fb

    .line 4014
    :cond_14c
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 4017
    :cond_150
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b0

    move/from16 v0, v18

    move v1, v10

    if-gt v0, v1, :cond_1b0

    if-gtz p2, :cond_1b0

    .line 4023
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_19d

    .line 4024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4025
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_197

    .line 4026
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4034
    :cond_197
    :goto_197
    if-eqz p2, :cond_1ac

    const/16 v25, 0x1

    goto/16 :goto_8

    .line 4029
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_197

    .line 4034
    :cond_1ac
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 4042
    :cond_1b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_24b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_24b

    .line 4043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_20d

    .line 4044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4045
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_209

    .line 4046
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4048
    :cond_209
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 4050
    :cond_20d
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p2, v0

    .line 4051
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p1, v0

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4059
    :cond_24b
    if-gez p2, :cond_327

    const/16 v25, 0x1

    move/from16 v9, v25

    .line 4061
    .local v9, down:Z
    :goto_251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v17

    .line 4062
    .local v17, inTouchMode:Z
    if-eqz v17, :cond_25a

    .line 4063
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4066
    :cond_25a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v14

    .line 4067
    .local v14, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v26

    sub-int v13, v25, v26

    .line 4069
    .local v13, footerViewsStart:I
    const/16 v23, 0x0

    .line 4070
    .local v23, start:I
    const/4 v8, 0x0

    .line 4072
    .local v8, count:I
    if-eqz v9, :cond_34b

    .line 4073
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v25, p2

    .line 4074
    .local v24, top:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_279
    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_290

    .line 4075
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4076
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_32d

    .line 4115
    .end local v5           #child:Landroid/view/View;
    .end local v24           #top:I
    :cond_290
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v25, v0

    add-int v25, v25, p1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 4117
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4119
    if-lez v8, :cond_2b0

    .line 4120
    move-object/from16 v0, p0

    move/from16 v1, v23

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 4122
    :cond_2b0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 4124
    if-eqz v9, :cond_2c7

    .line 4125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4128
    :cond_2c7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4130
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4131
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_2d8

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_2de

    .line 4132
    :cond_2d8
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 4135
    :cond_2de
    if-nez v17, :cond_315

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_315

    .line 4136
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v7, v25, v26

    .line 4137
    .local v7, childIndex:I
    if-ltz v7, :cond_315

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v25

    move v0, v7

    move/from16 v1, v25

    if-ge v0, v1, :cond_315

    .line 4138
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 4142
    .end local v7           #childIndex:I
    :cond_315
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4144
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4145
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4147
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 4059
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v13           #footerViewsStart:I
    .end local v14           #headerViewsCount:I
    .end local v16           #i:I
    .end local v17           #inTouchMode:Z
    .end local v23           #start:I
    :cond_327
    const/16 v25, 0x0

    move/from16 v9, v25

    goto/16 :goto_251

    .line 4079
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v13       #footerViewsStart:I
    .restart local v14       #headerViewsCount:I
    .restart local v16       #i:I
    .restart local v17       #inTouchMode:Z
    .restart local v23       #start:I
    .restart local v24       #top:I
    :cond_32d
    add-int/lit8 v8, v8, 0x1

    .line 4080
    add-int v20, v11, v16

    .line 4081
    .local v20, position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_347

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_347

    .line 4082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4074
    :cond_347
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_279

    .line 4093
    .end local v5           #child:Landroid/view/View;
    .end local v16           #i:I
    .end local v20           #position:I
    .end local v24           #top:I
    :cond_34b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v4, v25, p2

    .line 4094
    .local v4, bottom:I
    const/16 v25, 0x1

    sub-int v16, v6, v25

    .restart local v16       #i:I
    :goto_35d
    if-ltz v16, :cond_290

    .line 4095
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4096
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move v1, v4

    if-le v0, v1, :cond_290

    .line 4099
    move/from16 v23, v16

    .line 4100
    add-int/lit8 v8, v8, 0x1

    .line 4101
    add-int v20, v11, v16

    .line 4102
    .restart local v20       #position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_38c

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_38c

    .line 4103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4094
    :cond_38c
    add-int/lit8 v16, v16, -0x1

    goto :goto_35d
.end method

.method updateScrollIndicators()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1451
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_2b

    .line 1454
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_5c

    move v1, v8

    .line 1457
    .local v1, canScrollUp:Z
    :goto_c
    if-nez v1, :cond_23

    .line 1458
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 1459
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1460
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5e

    move v1, v8

    .line 1464
    .end local v2           #child:Landroid/view/View;
    :cond_23
    :goto_23
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_60

    move v5, v7

    :goto_28
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1467
    .end local v1           #canScrollUp:Z
    :cond_2b
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_5b

    .line 1469
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 1472
    .local v3, count:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v5, :cond_62

    move v0, v8

    .line 1475
    .local v0, canScrollDown:Z
    :goto_3b
    if-nez v0, :cond_53

    if-lez v3, :cond_53

    .line 1476
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1477
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_64

    move v0, v8

    .line 1480
    .end local v2           #child:Landroid/view/View;
    :cond_53
    :goto_53
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_66

    move v5, v7

    :goto_58
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_5b
    return-void

    :cond_5c
    move v1, v7

    .line 1454
    goto :goto_c

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5e
    move v1, v7

    .line 1460
    goto :goto_23

    .end local v2           #child:Landroid/view/View;
    :cond_60
    move v5, v9

    .line 1464
    goto :goto_28

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_62
    move v0, v7

    .line 1472
    goto :goto_3b

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_64
    move v0, v7

    .line 1477
    goto :goto_53

    .end local v2           #child:Landroid/view/View;
    :cond_66
    move v5, v9

    .line 1480
    goto :goto_58
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "dr"

    .prologue
    .line 1837
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
