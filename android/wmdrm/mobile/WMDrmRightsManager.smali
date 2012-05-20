.class public Landroid/wmdrm/mobile/WMDrmRightsManager;
.super Ljava/lang/Object;
.source "WMDrmRightsManager.java"

# interfaces
.implements Landroid/wmdrm/mobile/WMDRMConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "WMDRMRIGHTSMANAGER"

.field private static pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

.field private static wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    sput-object v1, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 34
    sput-object v1, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    .line 342
    :try_start_5
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] WMDRM JNI is Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string/jumbo v1, "wmdrm_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_12} :catch_13

    .line 347
    :goto_12
    return-void

    .line 344
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 345
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load wmdrm_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private native IsValidWmdrmFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method private native WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method public static getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;
    .registers 2

    .prologue
    .line 49
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] Default instance of the WMDRMManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    if-nez v0, :cond_19

    .line 51
    new-instance v0, Landroid/wmdrm/mobile/WMDrmRightsManager;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDrmRightsManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 55
    new-instance v0, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v0}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    .line 60
    :cond_19
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    return-object v0
.end method

.method private isCount(I)Z
    .registers 5
    .parameter "category"

    .prologue
    .line 224
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in isCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x6

    if-eq p1, v0, :cond_25

    const/4 v0, 0x7

    if-eq p1, v0, :cond_25

    const/16 v0, 0x8

    if-ne p1, v0, :cond_27

    .line 227
    :cond_25
    const/4 v0, 0x1

    .line 229
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private printrights(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V
    .registers 6
    .parameter "wmdrmRights"

    .prologue
    const-string v3, "[WMDRM] wmdrmRights.category :"

    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 145
    if-eqz p1, :cond_cc

    .line 146
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_aa

    .line 152
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_aa
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_cc

    .line 155
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_cc
    return-void
.end method

.method private native setWmDrmSecureClock(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method private updateDateConstraints(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V
    .registers 14
    .parameter "wmdrmrights"
    .parameter "rights"

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 161
    iget-wide v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v1, v3

    .line 163
    .local v1, key:I
    const-string v3, "WMDRMRIGHTSMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Most importent Category Value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    packed-switch v1, :pswitch_data_11e

    .line 221
    :cond_25
    :goto_25
    return-void

    .line 166
    :pswitch_26
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v3, :cond_25

    .line 167
    new-instance v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v2}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 168
    .local v2, startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 169
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 170
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 171
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 172
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 173
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 174
    iput-object v2, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto :goto_25

    .line 180
    .end local v2           #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :pswitch_64
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v3, :cond_25

    .line 181
    new-instance v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 182
    .local v0, endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 183
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 184
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 185
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 186
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 187
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 188
    iput-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto :goto_25

    .line 196
    .end local v0           #endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :pswitch_a2
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v3, :cond_df

    .line 197
    new-instance v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v2}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 198
    .restart local v2       #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 199
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 200
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 201
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 202
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 203
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 204
    iput-object v2, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 207
    .end local v2           #startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    :cond_df
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v3, :cond_25

    .line 208
    new-instance v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    .line 209
    .restart local v0       #endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 210
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 211
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 212
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 213
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 214
    iget-object v3, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 215
    iput-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    goto/16 :goto_25

    .line 164
    :pswitch_data_11e
    .packed-switch 0x3
        :pswitch_26
        :pswitch_64
        :pswitch_a2
        :pswitch_a2
        :pswitch_64
        :pswitch_a2
    .end packed-switch
.end method

.method private native updateWmDrmSecureClock(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method private updateWmdrmRightInfo(Landroid/playready/playreadymanager/PlayReadyRightsInfo;Landroid/wmdrm/mobile/WMDRMRightsInfo;)V
    .registers 10
    .parameter "pyvRightsinfo"
    .parameter "rightsInfo"

    .prologue
    const-string v6, "WMDRMRIGHTSMANAGER"

    .line 123
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 124
    .local v1, wmdrmRights:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 125
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->CategoryStr:Ljava/lang/String;

    iput-object v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    .line 126
    iget v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    invoke-direct {p0, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isCount(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    int-to-long v2, v0

    iget-object v4, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v4, v4, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_59

    .line 129
    const-string v2, "WMDRMRIGHTSMANAGER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WMDRM] i value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-nez v0, :cond_4c

    .line 131
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    .line 128
    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 132
    :cond_4c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    .line 133
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    goto :goto_49

    .line 137
    :cond_59
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] before updating the date info"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    invoke-direct {p0, v1, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateDateConstraints(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V

    .line 139
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] After updating the date info"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p2, v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 141
    invoke-direct {p0, v1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->printrights(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 142
    return-void
.end method


# virtual methods
.method public native createHDSAndCerts()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method public isPlayreadyFile(Ljava/lang/String;)Z
    .registers 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, fileExt:Ljava/lang/String;
    if-eqz p1, :cond_1f

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "pyv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v3

    .line 332
    :goto_1c
    return v1

    .line 329
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1f
    move v1, v3

    .line 332
    goto :goto_1c
.end method

.method public isWMdrmFile(Ljava/lang/String;)Z
    .registers 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "WMDRMRIGHTSMANAGER"

    .line 250
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] isWMdrmFile called with file"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, result:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 253
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] File is Present "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_1c
    sget-object v2, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v2, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->isPlayReadyFile(Ljava/lang/String;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_3b

    move-result v1

    .line 266
    const-string v2, "WMDRMRIGHTSMANAGER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WMDRM] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v1

    .line 259
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 260
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4e
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] File is not Present"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method

.method public queryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .registers 9
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "WMDRMRIGHTSMANAGER"

    .line 78
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] queryRights called with file"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x0

    .line 83
    .local v2, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    const/4 v1, 0x0

    .line 87
    .local v1, pyvRightsinfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 88
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] WMDRM file is Exists "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isPlayreadyFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 94
    :try_start_23
    sget-object v4, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v4, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_36

    .line 96
    new-instance v3, Landroid/wmdrm/mobile/WMDRMRightsInfo;

    invoke-direct {v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_3f

    .line 97
    .end local v2           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .local v3, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :try_start_30
    invoke-direct {p0, v1, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateWmdrmRightInfo(Landroid/playready/playreadymanager/PlayReadyRightsInfo;Landroid/wmdrm/mobile/WMDRMRightsInfo;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_67

    move-object v2, v3

    .end local v3           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v2       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :goto_34
    move-object v4, v2

    .line 117
    :goto_35
    return-object v4

    .line 99
    :cond_36
    :try_start_36
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v5, "[WMDRM] No rigths aer found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3f

    .line 100
    const/4 v4, 0x0

    goto :goto_35

    .line 102
    :catch_3f
    move-exception v4

    move-object v0, v4

    .line 103
    .local v0, e:Ljava/lang/Exception;
    :goto_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v4, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    :cond_55
    invoke-direct {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-result-object v2

    goto :goto_34

    .line 114
    :cond_5a
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] WMDRM file is not present in specified path"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 102
    .end local v2           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v3       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :catch_67
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v2       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    goto :goto_41
.end method

.method public setWMDrmSecureClock(J)Z
    .registers 6
    .parameter "nitzTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 295
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] setWMDrmSecureClock   called with nitzTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public updateWMDrmSecureClock(JJ)Z
    .registers 8
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 277
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] updateWMDrmSecureClock  called with beforeTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n after time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    return v0
.end method
