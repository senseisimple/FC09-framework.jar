.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object; = null

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 384
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 16
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v8, 0x0

    .line 30
    .local v8, temp:I
    if-nez p2, :cond_5c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ne p3, v9, :cond_5c

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 35
    :goto_12
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v4

    .line 36
    .local v4, initial:I
    new-array v9, v4, [Ljava/lang/Object;

    iput-object v9, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 37
    mul-int/lit8 v9, v4, 0x3

    new-array v9, v9, [I

    iput-object v9, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 39
    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_67

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 41
    .local v5, sp:Landroid/text/Spanned;
    const-class v9, Ljava/lang/Object;

    invoke-interface {v5, p2, p3, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 43
    .local v6, spans:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    array-length v9, v6

    if-ge v3, v9, :cond_67

    .line 44
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 45
    .local v7, st:I
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 46
    .local v1, en:I
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 48
    .local v2, fl:I
    if-ge v7, p2, :cond_48

    .line 49
    move v7, p2

    .line 50
    :cond_48
    if-le v1, p3, :cond_4b

    .line 51
    move v1, p3

    .line 53
    :cond_4b
    if-lt v7, v1, :cond_50

    .line 54
    move v8, v7

    .line 55
    move v7, v1

    .line 56
    move v1, v8

    .line 59
    :cond_50
    aget-object v9, v6, v3

    sub-int v10, v7, p2

    sub-int v11, v1, p2

    invoke-virtual {p0, v9, v10, v11, v2}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 33
    .end local v1           #en:I
    .end local v2           #fl:I
    .end local v3           #i:I
    .end local v4           #initial:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    .end local v7           #st:I
    :cond_5c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_12

    .line 62
    .restart local v4       #initial:I
    :cond_67
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 9
    .parameter "operation"
    .parameter "start"
    .parameter "end"

    .prologue
    const-string v4, " "

    .line 350
    if-ge p3, p2, :cond_2b

    .line 351
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_2b
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    .line 358
    .local v0, len:I
    if-gt p2, v0, :cond_33

    if-le p3, v0, :cond_5e

    .line 359
    :cond_33
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_5e
    if-ltz p2, :cond_62

    if-gez p3, :cond_89

    .line 365
    :cond_62
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_89
    return-void
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 10
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 317
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .line 318
    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .line 320
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_18

    .line 321
    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 323
    :cond_18
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 18
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 335
    move v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v2, v3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/SpanWatcher;

    .line 337
    .local v11, recip:[Landroid/text/SpanWatcher;
    array-length v10, v11

    .line 339
    .local v10, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_18
    if-ge v9, v10, :cond_2d

    .line 340
    aget-object v2, v11, v9

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 339
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 342
    :cond_2d
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 10
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 326
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .line 327
    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .line 329
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_18

    .line 330
    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 332
    :cond_18
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .registers 3
    .parameter "i"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getChars(II[CI)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 80
    return-void
.end method

.method getSpanCount()I
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    return v0
.end method

.method getSpanData()[I
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 7
    .parameter "what"

    .prologue
    .line 187
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 188
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 189
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 191
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_19

    .line 192
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_16

    .line 193
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    .line 197
    :goto_15
    return v4

    .line 191
    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 197
    :cond_19
    const/4 v4, -0x1

    goto :goto_15
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 7
    .parameter "what"

    .prologue
    .line 201
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 202
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 203
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 205
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_19

    .line 206
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_16

    .line 207
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    .line 211
    :goto_15
    return v4

    .line 205
    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 211
    :cond_19
    const/4 v4, 0x0

    goto :goto_15
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 7
    .parameter "what"

    .prologue
    .line 173
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 174
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 175
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 177
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_19

    .line 178
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_16

    .line 179
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v1, v4

    .line 183
    :goto_15
    return v4

    .line 177
    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 183
    :cond_19
    const/4 v4, -0x1

    goto :goto_15
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 26
    .parameter "queryStart"
    .parameter "queryEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 215
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 217
    .local v5, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v15, v0

    .line 218
    .local v15, spanCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 219
    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v7, v0

    .line 220
    .local v7, data:[I
    const/4 v13, 0x0

    .line 221
    .local v13, ret:[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 223
    .local v14, ret1:Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v19, v14

    move v6, v5

    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .local v6, count:I
    :goto_17
    if-ge v8, v15, :cond_ca

    .line 224
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x0

    aget v17, v7, v20

    .line 225
    .local v17, spanStart:I
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x1

    aget v16, v7, v20

    .line 227
    .local v16, spanEnd:I
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_30

    move v5, v6

    .line 223
    .end local v6           #count:I
    .restart local v5       #count:I
    :goto_2c
    add-int/lit8 v8, v8, 0x1

    move v6, v5

    .end local v5           #count:I
    .restart local v6       #count:I
    goto :goto_17

    .line 230
    :cond_30
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_38

    move v5, v6

    .line 231
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2c

    .line 234
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_38
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_54

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_54

    .line 235
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_4c

    move v5, v6

    .line 236
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2c

    .line 238
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_4c
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_54

    move v5, v6

    .line 239
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2c

    .line 243
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_54
    if-eqz p3, :cond_64

    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_64

    move v5, v6

    .line 244
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2c

    .line 247
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_64
    if-nez v6, :cond_6d

    .line 248
    aget-object v14, v18, v8

    .line 249
    .restart local v14       #ret1:Ljava/lang/Object;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    move-object/from16 v19, v14

    goto :goto_2c

    .line 251
    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .restart local v6       #count:I
    :cond_6d
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_8a

    .line 252
    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 253
    const/16 v20, 0x0

    aput-object v19, v13, v20

    .line 256
    :cond_8a
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x2

    aget v20, v7, v20

    const/high16 v21, 0xff

    and-int v12, v20, v21

    .line 257
    .local v12, prio:I
    if-eqz v12, :cond_c2

    .line 260
    const/4 v9, 0x0

    .local v9, j:I
    :goto_97
    if-ge v9, v6, :cond_a9

    .line 261
    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff

    and-int v11, v20, v21

    .line 263
    .local v11, p:I
    if-le v12, v11, :cond_bf

    .line 268
    .end local v11           #p:I
    :cond_a9
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v6, v9

    move-object v0, v13

    move v1, v9

    move-object v2, v13

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    aget-object v20, v18, v8

    aput-object v20, v13, v9

    .line 270
    add-int/lit8 v5, v6, 0x1

    .line 271
    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_2c

    .line 260
    .end local v5           #count:I
    .restart local v6       #count:I
    .restart local v11       #p:I
    :cond_bf
    add-int/lit8 v9, v9, 0x1

    goto :goto_97

    .line 272
    .end local v9           #j:I
    .end local v11           #p:I
    :cond_c2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    aget-object v20, v18, v8

    aput-object v20, v13, v6

    goto/16 :goto_2c

    .line 277
    .end local v5           #count:I
    .end local v12           #prio:I
    .end local v16           #spanEnd:I
    .end local v17           #spanStart:I
    .restart local v6       #count:I
    :cond_ca
    if-nez v6, :cond_d5

    .line 278
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v19, p0

    .line 291
    :goto_d4
    return-object v19

    .line 280
    .restart local p0
    :cond_d5
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_f8

    .line 281
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 282
    const/16 v20, 0x0

    aput-object v19, v13, v20

    .line 283
    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_d4

    .line 285
    .restart local p0
    :cond_f8
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_108

    .line 286
    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_d4

    .line 289
    :cond_108
    move-object/from16 v0, p3

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 290
    .local v10, nret:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v19

    move-object v2, v10

    move/from16 v3, v20

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    check-cast v10, [Ljava/lang/Object;

    .end local v10           #nret:[Ljava/lang/Object;
    move-object/from16 v19, v10

    goto :goto_d4
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 11
    .parameter "start"
    .parameter "limit"
    .parameter "kind"

    .prologue
    .line 295
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 296
    .local v0, count:I
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 297
    .local v4, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 299
    .local v1, data:[I
    if-nez p3, :cond_a

    .line 300
    const-class p3, Ljava/lang/Object;

    .line 303
    :cond_a
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v0, :cond_36

    .line 304
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v5, v1, v6

    .line 305
    .local v5, st:I
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v2, v1, v6

    .line 307
    .local v2, en:I
    if-le v5, p1, :cond_26

    if-ge v5, p2, :cond_26

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 308
    move p2, v5

    .line 309
    :cond_26
    if-le v2, p1, :cond_33

    if-ge v2, p2, :cond_33

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 310
    move p2, v2

    .line 303
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 313
    .end local v2           #en:I
    .end local v5           #st:I
    :cond_36
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .registers 13
    .parameter "what"

    .prologue
    const/4 v10, 0x1

    .line 149
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 150
    .local v1, count:I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 151
    .local v6, spans:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 153
    .local v2, data:[I
    sub-int v3, v1, v10

    .local v3, i:I
    :goto_9
    if-ltz v3, :cond_37

    .line 154
    aget-object v7, v6, v3

    if-ne v7, p1, :cond_38

    .line 155
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v5, v2, v7

    .line 156
    .local v5, ostart:I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v2, v7

    .line 158
    .local v4, oend:I
    add-int/lit8 v7, v3, 0x1

    sub-int v0, v1, v7

    .line 160
    .local v0, c:I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v0, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    sub-int/2addr v7, v10

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 166
    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 170
    .end local v0           #c:I
    .end local v4           #oend:I
    .end local v5           #ostart:I
    :cond_37
    return-void

    .line 153
    :cond_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_9
.end method

.method setSpan(Ljava/lang/Object;III)V
    .registers 24
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 83
    move/from16 v9, p2

    .line 84
    .local v9, nstart:I
    move/from16 v10, p3

    .line 86
    .local v10, nend:I
    const-string/jumbo v5, "setSpan"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 88
    and-int/lit8 v5, p4, 0x33

    const/16 v6, 0x33

    if-ne v5, v6, :cond_a1

    .line 89
    if-eqz p2, :cond_5c

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p2

    move v1, v5

    if-eq v0, v1, :cond_5c

    .line 90
    const/4 v5, 0x1

    sub-int v5, p2, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .line 92
    .local v11, c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_5c

    .line 93
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " follows "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    .end local v11           #c:C
    :cond_5c
    if-eqz p3, :cond_a1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-eq v0, v1, :cond_a1

    .line 99
    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .line 101
    .restart local v11       #c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_a1

    .line 102
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " follows "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    .end local v11           #c:C
    :cond_a1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v12, v0

    .line 109
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 110
    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v13, v0

    .line 112
    .local v13, data:[I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_b2
    if-ge v14, v12, :cond_e4

    .line 113
    aget-object v5, v18, v14

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_e1

    .line 114
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aget v7, v13, v5

    .line 115
    .local v7, ostart:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v8, v13, v5

    .line 117
    .local v8, oend:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aput p2, v13, v5

    .line 118
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aput p3, v13, v5

    .line 119
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x2

    aput p4, v13, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 121
    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 146
    .end local v7           #ostart:I
    .end local v8           #oend:I
    :cond_e0
    :goto_e0
    return-void

    .line 112
    :cond_e1
    add-int/lit8 v14, v14, 0x1

    goto :goto_b2

    .line 126
    :cond_e4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v6, v0

    array-length v6, v6

    if-lt v5, v6, :cond_139

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v16

    .line 128
    .local v16, newsize:I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 129
    .local v17, newtags:[Ljava/lang/Object;
    mul-int/lit8 v5, v16, 0x3

    new-array v15, v5, [I

    .line 131
    .local v15, newdata:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v8, v0

    mul-int/lit8 v8, v8, 0x3

    invoke-static {v5, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 135
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 138
    .end local v15           #newdata:[I
    .end local v16           #newsize:I
    .end local v17           #newtags:[Ljava/lang/Object;
    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    aput-object p1, v5, v6

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x0

    aput p2, v5, v6

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    aput p3, v5, v6

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    aput p4, v5, v6

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 144
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_e0

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_e0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
