.class public Lcom/android/internal/telephony/gsm/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"


# instance fields
.field apn:Ljava/lang/String;

.field authType:I

.field carrier:Ljava/lang/String;

.field id:I

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field numeric:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field protocol:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field roamingProtocol:Ljava/lang/String;

.field public types:[Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsc:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 57
    iput-object p10, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    .line 58
    iput-object p11, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    .line 59
    iput p12, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    .line 60
    iput-object p13, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .line 61
    iput-object p14, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->protocol:Ljava/lang/String;

    .line 62
    iput-object p15, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 22
    .parameter "data"

    .prologue
    .line 89
    if-nez p0, :cond_5

    const/16 p0, 0x0

    .line 128
    .end local p0
    :goto_4
    return-object p0

    .line 93
    .restart local p0
    :cond_5
    const-string v5, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 94
    const/4 v5, 0x2

    .line 95
    .local v5, version:I
    const-string v6, "^\\[ApnSettingV2\\]\\s*"

    const-string v7, ""

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v6, v5

    .line 100
    .end local v5           #version:I
    .local v6, version:I
    :goto_1e
    const-string v5, "\\s*,\\s*"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 101
    .local p0, a:[Ljava/lang/String;
    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    const/16 v7, 0xe

    if-ge v5, v7, :cond_35

    .line 102
    const/16 p0, 0x0

    goto :goto_4

    .line 97
    .end local v6           #version:I
    .local p0, data:Ljava/lang/String;
    :cond_32
    const/4 v5, 0x1

    .restart local v5       #version:I
    move v6, v5

    .end local v5           #version:I
    .restart local v6       #version:I
    goto :goto_1e

    .line 107
    .local p0, a:[Ljava/lang/String;
    :cond_35
    const/16 v5, 0xc

    :try_start_37
    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_a5

    move-result v17

    .line 114
    .local v17, authType:I
    :goto_3d
    const/4 v5, 0x1

    if-ne v6, v5, :cond_a9

    .line 115
    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    const/16 v6, 0xd

    sub-int/2addr v5, v6

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 116
    .end local v6           #version:I
    .local v18, typeArray:[Ljava/lang/String;
    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move v7, v0

    const/16 v8, 0xd

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v18

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    const-string v19, "IP"

    .line 118
    .local v19, protocol:Ljava/lang/String;
    const-string v20, "IP"

    .line 128
    .local v20, roamingProtocol:Ljava/lang/String;
    :goto_64
    new-instance v5, Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v6, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0xa

    aget-object v8, p0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    aget-object v8, p0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    const/4 v11, 0x3

    aget-object v11, p0, v11

    const/4 v12, 0x7

    aget-object v12, p0, v12

    const/16 v13, 0x8

    aget-object v13, p0, v13

    const/16 v14, 0x9

    aget-object v14, p0, v14

    const/4 v15, 0x4

    aget-object v15, p0, v15

    const/16 v16, 0x5

    aget-object v16, p0, v16

    invoke-direct/range {v5 .. v20}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p0, v5

    goto/16 :goto_4

    .line 108
    .end local v17           #authType:I
    .end local v18           #typeArray:[Ljava/lang/String;
    .end local v19           #protocol:Ljava/lang/String;
    .end local v20           #roamingProtocol:Ljava/lang/String;
    .restart local v6       #version:I
    :catch_a5
    move-exception v5

    .line 109
    .local v5, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .restart local v17       #authType:I
    goto :goto_3d

    .line 120
    .end local v5           #e:Ljava/lang/Exception;
    :cond_a9
    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    const/16 v6, 0x10

    if-ge v5, v6, :cond_b5

    .line 121
    .end local v6           #version:I
    const/16 p0, 0x0

    goto/16 :goto_4

    .line 123
    :cond_b5
    const/16 v5, 0xd

    aget-object v5, p0, v5

    const-string v6, "\\s*\\|\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 124
    .restart local v18       #typeArray:[Ljava/lang/String;
    const/16 v5, 0xe

    aget-object v19, p0, v5

    .line 125
    .restart local v19       #protocol:Ljava/lang/String;
    const/16 v5, 0xf

    aget-object v20, p0, v5

    .restart local v20       #roamingProtocol:Ljava/lang/String;
    goto :goto_64
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .registers 7
    .parameter "type"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 159
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "hipri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 162
    :cond_26
    const/4 v4, 0x1

    .line 165
    .end local v3           #t:Ljava/lang/String;
    :goto_27
    return v4

    .line 157
    .restart local v3       #t:Ljava/lang/String;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 165
    .end local v3           #t:Ljava/lang/String;
    :cond_2b
    const/4 v4, 0x0

    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const-string v4, ", "

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_85
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_a0

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_9d

    .line 148
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 151
    :cond_a0
    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
