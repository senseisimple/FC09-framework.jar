.class final enum Lcom/android/internal/telephony/gsm/stk/CallType;
.super Ljava/lang/Enum;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/CallType;

.field public static final enum CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/gsm/stk/CallType;

.field public static final enum CALL_TYPE_MO_SS:Lcom/android/internal/telephony/gsm/stk/CallType;

.field public static final enum CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/gsm/stk/CallType;

.field public static final enum CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

.field public static final enum CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/gsm/stk/CallType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallType;

    const-string v1, "CALL_TYPE_MO_VOICE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/gsm/stk/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallType;

    const-string v1, "CALL_TYPE_MO_SMS"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/gsm/stk/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/gsm/stk/CallType;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallType;

    const-string v1, "CALL_TYPE_MO_SS"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/gsm/stk/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/gsm/stk/CallType;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallType;

    const-string v1, "CALL_TYPE_MO_USSD"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/gsm/stk/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/gsm/stk/CallType;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallType;

    const-string v1, "CALL_TYPE_PDP_CTXT"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/gsm/stk/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/gsm/stk/CallType;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/CallType;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/gsm/stk/CallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/gsm/stk/CallType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/gsm/stk/CallType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/gsm/stk/CallType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/CallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/CallType;->mValue:I

    .line 133
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;
    .registers 6
    .parameter "value"

    .prologue
    .line 145
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/CallType;->values()[Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/CallType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 146
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/CallType;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/CallType;->mValue:I

    if-ne v4, p0, :cond_10

    move-object v4, v1

    .line 150
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/CallType;
    :goto_f
    return-object v4

    .line 145
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/CallType;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 150
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/CallType;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/CallType;
    .registers 2
    .parameter "name"

    .prologue
    .line 122
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/CallType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/CallType;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/CallType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/CallType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/CallType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CallType;->mValue:I

    return v0
.end method
