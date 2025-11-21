.class public Lcom/sec/android/iaft/IAFDDiagnosis;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;
    }
.end annotation


# static fields
.field private static final blacklist EXP_REPAIRINFO_AppFlag:I = 0x3

.field private static final blacklist EXP_REPAIRINFO_MainLan:I = 0x4

.field private static final blacklist EXP_REPAIRINFO_NoUpdateFlag:I = 0x2

.field private static final blacklist EXP_REPAIRINFO_Only32BitApp:I = 0x6

.field private static final blacklist EXP_REPAIRINFO_PileFlag:I = 0x0

.field private static final blacklist EXP_REPAIRINFO_RepairModeFlag:I = 0x1

.field private static final blacklist EXP_REPAIRINFO_SubLan:I = 0x5

.field private static final blacklist EXP_RULE_32BITONLY:I = 0x4

.field private static final blacklist EXP_RULE_LIBS:I = 0x2

.field private static final blacklist EXP_RULE_NONE:I = 0x0

.field private static final blacklist EXP_RULE_PKGN:I = 0x1

.field private static final blacklist EXP_UNKNOW:I = -0x1

.field private static final blacklist FLAG_SUPPORT3RDAPP:I = 0x1

.field private static final blacklist FLAG_SUPPORTSYSAPP:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDDiagnosis"


# instance fields
.field private blacklist callstack:Ljava/lang/String;

.field private blacklist component:Ljava/lang/String;

.field private blacklist curAppFlag:I

.field private blacklist curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field private blacklist dualUserId:I

.field private blacklist expType:I

.field private blacklist isCHNModel:Z

.field private blacklist isParseSuccess:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private blacklist mSalesCode:Ljava/lang/String;

.field private blacklist reason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDiagnosis-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;-><init>()V

    return-void
.end method

.method private blacklist findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p3, p3, 0x1

    sub-int/2addr p3, p0

    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p4

    const/4 p4, 0x0

    if-gez v1, :cond_0

    move v1, p4

    :cond_0
    :goto_0
    if-lt p3, v1, :cond_3

    move v3, p3

    move v2, p4

    :goto_1
    if-ge v2, p0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    if-ne v2, v0, :cond_1

    return p3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getCallstack()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    shl-int/lit8 p2, p3, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p3, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const-string v4, "Caused by:"

    invoke-direct {p0, p1, v4, v0, p2}, Lcom/sec/android/iaft/IAFDDiagnosis;->findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    if-ltz v4, :cond_2

    sub-int/2addr v0, v4

    if-ge v0, p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, v4, v0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    if-lez p3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method private blacklist getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string p0, "Cause:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_1

    const-string p0, "Abort message:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xe

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    :goto_0
    add-int v2, p0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    add-int/2addr p2, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p2, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :goto_2
    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v1, :cond_6

    if-gt p2, p1, :cond_5

    goto :goto_3

    :cond_5
    move p2, p1

    :cond_6
    :goto_3
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getComponent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1

    const-string p0, "com."

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_8

    if-eqz p4, :cond_4

    const-string p4, "/data/app/"

    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-gez p4, :cond_1

    const-string p4, "/app/"

    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    :cond_1
    invoke-virtual {p2, p0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-gez v0, :cond_3

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    move p4, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    :goto_0
    if-ltz p4, :cond_8

    const-string p0, "\n"

    invoke-virtual {p2, p0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_6

    add-int/2addr p3, p4

    if-gt p0, p3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move p0, p3

    goto :goto_2

    :cond_6
    add-int/2addr p3, p4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p3, p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    :goto_2
    invoke-virtual {p2, p4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object p1
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;
    .locals 1

    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getRepairType(ILjava/lang/String;)I
    .locals 8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v3, "com.samsung.android.voc"

    const/16 v4, 0x4000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCode(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    return v2

    :cond_2
    const/16 v3, 0x27

    if-ne p1, v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    return v2

    :cond_3
    move-object p2, v0

    :cond_4
    if-ne p1, v3, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p1, p1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v0, v3

    if-gez p1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {p0, p2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    aget-object p0, p0, v2

    const-string p1, "Pile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x2

    return p0

    :catch_0
    :cond_7
    return v2
.end method

.method private blacklist getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    const-string v0, "backtrace:"

    if-eqz p3, :cond_5

    const-string p3, "ABI:"

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x9

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x36

    if-ne p3, v1, :cond_0

    const/4 p0, 0x1

    :cond_0
    const-string/jumbo p3, "pid:"

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-eqz p0, :cond_1

    const-string p0, " x0 "

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    const-string p0, " r0 "

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    :goto_0
    if-gt p0, p3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-gt p0, p3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    add-int/2addr p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_1
    if-gt p0, p2, :cond_4

    goto :goto_2

    :cond_4
    move p0, p2

    :goto_2
    invoke-virtual {p1, p3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p0, p3, 0xb

    :goto_3
    add-int/2addr p2, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-gt p2, p3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_4
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist initData(Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/iaft/IAFDDBManager;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    :goto_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    const-string v0, "IAFDDiagnosis"

    const-string v1, "initData wait..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 p1, p1, -0x1

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "==IAFD=="

    const-string v0, "initData fail, callstack as the following:"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private blacklist is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :cond_0
    const-string p0, "arm64"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "lib64"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private blacklist isAllFilesAccessOff(ILjava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const-string v0, "android:manage_external_storage"

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isAvalilableSizeNoEnough()Z
    .locals 4

    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v0

    const-wide/32 v0, 0x8000000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isContainExpClassName(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    and-int/2addr v1, p2

    if-eq p2, v1, :cond_4

    return v0

    :cond_4
    iget-object p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p2, p2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    iget-object p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p2, p2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object p2, p2, p1

    iput-object p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p0

    if-lez p0, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method private blacklist isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v4

    and-int/2addr v4, p4

    if-ne v4, p4, :cond_7

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetkeyWord(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p1

    const/4 p2, 0x2

    const/4 p4, 0x1

    if-ne p1, p2, :cond_4

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    move p2, p4

    :goto_1
    if-ge p2, p1, :cond_3

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return p4

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    iput-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p0

    if-eq p0, p4, :cond_6

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    return p4

    :cond_6
    :goto_2
    return v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method private blacklist isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p2, 0x0

    if-gez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return p2
.end method

.method private blacklist isNativeCrash(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "Native crash"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private blacklist isRemovableApp(Ljava/lang/String;II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreMovableAppPaths(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p0, v1

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p0, 0x13

    if-ne p3, p0, :cond_1

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method private blacklist parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p3, "IAFDDiagnosis"

    const/4 p4, 0x0

    iput p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    iput-boolean p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    if-nez p8, :cond_0

    return p4

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-eqz p1, :cond_2

    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_1

    and-int/lit16 p5, p5, 0x80

    if-nez p5, :cond_1

    const-string p5, "com.samsung."

    invoke-virtual {p1, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    const-string p5, "com.sec."

    invoke-virtual {p1, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2

    :cond_1
    const/4 p5, 0x2

    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    const/4 p5, -0x1

    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v1, :cond_3

    return p4

    :cond_3
    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v1

    if-nez v1, :cond_4

    return p4

    :cond_4
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v1, p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return p4

    :cond_5
    const-string/jumbo v1, "parseExpType start"

    invoke-static {p3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    invoke-direct {p0, p6}, Lcom/sec/android/iaft/IAFDDiagnosis;->isNativeCrash(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x1e

    if-eqz v1, :cond_e

    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p6, p6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result p6

    invoke-direct {p0, p8, p6, p4}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p7

    invoke-direct {p0, p8, p6, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_6

    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result p8

    invoke-direct {p0, p6, p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    :cond_6
    if-eqz p7, :cond_8

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p8

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v1

    if-le p8, v1, :cond_7

    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result p8

    :cond_7
    invoke-virtual {p7, p4, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    :cond_8
    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v1

    invoke-direct {p0, p8, p7, v1, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result p8

    if-eqz p8, :cond_9

    iget p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v1

    and-int/2addr p8, v1

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne p8, v1, :cond_9

    invoke-direct {p0, p2, p5}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_9

    iput v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v0

    :cond_9
    if-eqz p7, :cond_b

    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, p7, p8, p7, v1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p8

    if-eqz p8, :cond_a

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_a
    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, p7, p8, p7, v1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p8

    if-eqz p8, :cond_b

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_b
    if-eqz p6, :cond_c

    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, p6, p8, p7, v1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_c

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_c
    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz p6, :cond_1b

    invoke-static {p6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p6

    if-ne p6, v0, :cond_d

    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {p6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p6

    iget p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne p6, p8, :cond_d

    iget-object p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p2, p2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p7, p2, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_d
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p1

    if-ne p1, v2, :cond_1b

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p1

    iget p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne p1, p6, :cond_1b

    invoke-direct {p0, p2, p5}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_e
    const-string v1, ""

    if-eqz p7, :cond_10

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v5

    if-le v4, v5, :cond_f

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v4

    :cond_f
    invoke-virtual {p7, p4, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    :cond_10
    if-eqz p8, :cond_12

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v4

    invoke-direct {p0, p8, v1, v4}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p8

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v4

    if-le p8, v4, :cond_11

    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result p8

    :cond_11
    invoke-virtual {v1, p4, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    :cond_12
    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v4

    invoke-direct {p0, p8, v1, v4, p4}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    iget-object p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p8, p8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result p8

    if-eqz p8, :cond_13

    iget p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v4

    and-int/2addr p8, v4

    iget v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne p8, v4, :cond_13

    invoke-direct {p0, p2, p5}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_13

    iput v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v0

    :cond_13
    iget p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, p6, p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpClassName(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_14

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_14
    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p6, p6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, p7, p6, v1, p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_15

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_15
    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p6, p6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, p7, p6, v1, p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_16

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_16
    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p6, p6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget p7, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, v1, p6, v1, p7}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_17

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_17
    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p6, p6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget p7, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, v1, p6, v1, p7}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_18

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_18
    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p6, p6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget p7, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {p0, v1, p6, v1, p7}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_19

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_19
    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz p6, :cond_1b

    invoke-static {p6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p6

    if-ne p6, v0, :cond_1a

    iget-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {p6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p6

    iget p7, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne p6, p7, :cond_1a

    iget-object p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p2, p2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_1a
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p1

    if-ne p1, v2, :cond_1b

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result p1

    iget p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne p1, p6, :cond_1b

    invoke-direct {p0, p2, p5}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "parseExpType fail, skip, callstack as the following:"

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    return p4
.end method

.method private blacklist parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const-string v2, "Only32bit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public blacklist getExpType()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExpType() expType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return p0
.end method

.method public blacklist getParseStatus()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IAFDDiagnosis Parse successful,expType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return p0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v1, "com.samsung.android.lool"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.sm_cn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    return-void
.end method

.method public blacklist parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/16 p5, 0x27

    const/4 p6, 0x1

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    const/16 p7, 0x13

    if-eq p2, p7, :cond_5

    const/16 p7, 0x1b

    if-eq p2, p7, :cond_4

    const/16 p4, 0x22

    if-eq p2, p4, :cond_2

    const/16 p4, 0x23

    if-eq p2, p4, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    :cond_0
    return p6

    :cond_1
    iput p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    return p6

    :cond_2
    iget-boolean p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    if-eqz p2, :cond_3

    invoke-direct {p0, p4, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAvalilableSizeNoEnough()Z

    move-result p0

    if-eqz p0, :cond_7

    return p6

    :cond_4
    invoke-direct {p0, p4, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAllFilesAccessOff(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p6

    :cond_5
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object p1, p1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetwebView_pkgName(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x100000

    invoke-direct {p0, p1, p2, p7}, Lcom/sec/android/iaft/IAFDDiagnosis;->isRemovableApp(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_7

    return p6

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p6

    :catch_0
    :cond_7
    return v0
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    return-void
.end method

.method public blacklist showIAFDCrashDialogs(IILjava/lang/String;)Z
    .locals 10

    const-string v0, "com.sec.android.iaft.IAFDService"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.sm.ACTION_START_THIRD_APP_ERROR_DIALOG"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v6, "com.samsung.android.lool"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "IAFDDiagnosis"

    const-string v5, "Show3rdAppErrorUiExt() startService SM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.sec.android.iaft"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v0

    const/16 v6, 0x27

    if-ne v0, v6, :cond_1

    move-object v4, p3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "onekey"

    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "OneKeyRepairMode"

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "onejump"

    aget-object v9, v0, v3

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v4, "0"

    aget-object v7, v0, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "CheckUpdateFlag"

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v7, v7, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetmainLanguage(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x5

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    :goto_2
    const-string/jumbo v7, "null"

    iget-object v8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string/jumbo v7, "targetUrl"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "repairTrigAPP"

    aget-object v0, v0, v6

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v5

    :goto_4
    const-string/jumbo v4, "pkgName"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "userId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "type"

    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "repeat"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "component"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "error_stack"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "pkgUserId"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "repairType"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "dualUserId"

    iget p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "isCHNModel"

    iget-boolean p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-lez v2, :cond_7

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    const-string/jumbo p3, "versionCode"

    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v0, p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p3, "versionName"

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "appName"

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "hasUpdate"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const-string p1, "commandType"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return v3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
