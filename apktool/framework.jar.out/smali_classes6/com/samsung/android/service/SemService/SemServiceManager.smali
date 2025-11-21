.class public final Lcom/samsung/android/service/SemService/SemServiceManager;
.super Ljava/lang/Object;
.source "SemServiceManager.java"


# static fields
.field public static final blacklist ERROR:I = -0x1

.field public static final blacklist ERROR_ADD_DEL_LIST:I = -0x10

.field public static final blacklist ERROR_BOOT_DEACT:I = -0x11

.field public static final blacklist ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final blacklist ERROR_DATA:I = -0xd

.field public static final blacklist ERROR_DEACTIVATION:I = -0x12

.field public static final blacklist ERROR_EXCEPTION:I = -0x5a

.field public static final blacklist ERROR_FACTORY_ERROR:I = -0xa

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0xa

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x5b

.field public static final blacklist ERROR_NO_PERMISSION_STRING:Ljava/lang/String; = null

.field public static final blacklist ERROR_NO_SERVICE:I = -0x5c

.field public static final blacklist ERROR_SELECT_ERROR:I = -0xb

.field public static final blacklist ERROR_SEND_ERROR:I = -0xc

.field public static final blacklist ERROR_UNSAT_LINK:I = -0x3

.field public static final blacklist ESESTATUS_BUSY:I = -0xc8

.field public static final blacklist ESESTATUS_NOT_SUPPORTED:I = -0x64

.field private static final blacklist HEX_CHARS:[C

.field private static final blacklist MAX_CAPDU_SIZE:I = 0x10009

.field private static final blacklist MAX_RAPDU_SIZE:I = 0x10002

.field public static final blacklist NO_ERROR:I = 0x0

.field public static final blacklist NO_ERROR_SPI:I = 0x0

.field public static final blacklist SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final blacklist SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_IN_SSD:I = 0x6

.field public static final blacklist SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final blacklist SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_ServiceManager"

.field private static blacklist chipVendor:Ljava/lang/String; = null

.field private static blacklist cosName:Ljava/lang/String; = null

.field public static final blacklist isSupportSemService:Z = true

.field private static blacklist isSupportSemServiceManager:Z = false

.field private static final blacklist normalSpi_Flag:I = 0x0

.field private static final blacklist secureSpi_Flag:I = 0x1


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSemService:Lcom/samsung/android/service/SemService/ISemService;

.field private blacklist skuChipName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->AIDDeactivation(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/SemService/SemServiceManager;->parseList([BI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v0, "UT8.0U"

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->cosName:Ljava/lang/String;

    const-string v0, "GEMALTO"

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->chipVendor:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->skuChipName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/samsung/android/service/SemService/SemServiceManager;->cosName:Ljava/lang/String;

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sput-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    :cond_0
    sget-object p1, Lcom/samsung/android/service/SemService/SemServiceManager;->chipVendor:Ljava/lang/String;

    const-string v1, "SKU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->readSkuProperty()V

    iget-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->skuChipName:Ljava/lang/String;

    const-string v1, "ese"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sput-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    :cond_1
    sget-boolean p1, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v0, "SEC_ESE_ServiceManager"

    if-eqz p1, :cond_3

    const-string p1, "SemService"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connects to SemService is failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connects to SemService."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p0, "SemService is not supported"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist AIDDeactivation(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v1, "SEC_ESE_ServiceManager"

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "AID Null Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "80F80002"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "00"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v4, v3

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    array-length v4, v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEAID SW : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v4, -0x2

    aget-byte v8, v3, v7

    invoke-static {v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v4, -0x1

    aget-byte v9, v3, v8

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v4, v5, :cond_5

    aget-byte v4, v3, v7

    const/16 v5, -0x70

    if-ne v4, v5, :cond_3

    aget-byte v5, v3, v8

    if-eqz v5, :cond_4

    :cond_3
    const/16 v5, 0x63

    if-ne v4, v5, :cond_5

    aget-byte v3, v3, v8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    :cond_4
    const-string v3, "deactivate list success"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string v3, "deactivate list fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :goto_1
    const-string v3, "Aid Deactivation Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x1

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static blacklist bytesToHex([B)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit16 v6, v5, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v4, v6

    aput-char v6, v0, v3

    add-int/2addr v3, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist hexToBytes(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private blacklist isSupportEsek()Z
    .locals 2

    const-string/jumbo p0, "ro.security.ese.support_esek"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    const-string p0, "SEC_ESE_ServiceManager"

    const-string v1, "failed to get sysProp: ro.security.ese.support_esek"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist parseList([BI)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "SEC_ESE_ServiceManager"

    if-nez p1, :cond_0

    const-string/jumbo p1, "parse list aid null error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v2, :cond_1

    const-string p1, "SemService is not supported"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    move v2, p0

    :goto_0
    if-ge p0, p2, :cond_3

    aget-byte v3, p1, p0

    if-lez v3, :cond_2

    add-int/lit8 p0, p0, 0x1

    new-array v4, v3, [B

    add-int v4, p0, v3

    invoke-static {p1, p0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    add-int/2addr p0, v3

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private blacklist readSkuProperty()V
    .locals 1

    const-string/jumbo v0, "ro.boot.hardware.sku"

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->skuChipName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SEC_ESE_ServiceManager"

    const-string v0, "failed to get sysProp: ro.boot.hardware.sku"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist COSSPIAccessControl(I)I
    .locals 4

    const-string v0, "COSSPIAccessControl() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    const/16 v3, -0x5a

    if-ne p1, v0, :cond_1

    :try_start_0
    const-string p1, "SPIAC SPI Open"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "SPIAC SPI Close"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "SPIAC Type Error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v3

    :goto_3
    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist accessControlForCOSU(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist addSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "%02x"

    const-string v3, "LS : "

    const-string v4, "Select Fail"

    const-string v5, "Select SW : "

    const-string v6, "OPEN Error "

    const/16 v7, 0xe

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    sget-boolean v8, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v9, "SEC_ESE_ServiceManager"

    if-nez v8, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/4 v10, 0x0

    if-eqz v0, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_7

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v11

    if-eqz v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5

    return v11

    :cond_2
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v7

    const/16 v12, -0xb

    if-eqz v7, :cond_b

    array-length v13, v7

    const/4 v14, 0x2

    if-ge v13, v14, :cond_3

    goto/16 :goto_6

    :cond_3
    array-length v13, v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v13, -0x2

    aget-byte v16, v7, v5

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v13, -0x1

    aget-byte v16, v7, v6

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v13, v14, :cond_9

    aget-byte v5, v7, v5

    const/16 v8, -0x70

    if-ne v5, v8, :cond_9

    aget-byte v5, v7, v6

    if-nez v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v10

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_8

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "AID Data Error"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "80F600"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v5, v4

    if-ge v5, v14, :cond_5

    goto :goto_2

    :cond_5
    array-length v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSP SW : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, -0x2

    aget-byte v12, v4, v7

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v5, -0x1

    aget-byte v13, v4, v12

    invoke-static {v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v5, v14, :cond_6

    aget-byte v5, v4, v7

    if-ne v5, v8, :cond_6

    aget-byte v4, v4, v12

    if-nez v4, :cond_6

    const-string v4, "AL Success"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v4, "AL Fail"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    :goto_2
    const-string v4, "Send Error"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_8
    move v10, v3

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v12

    :goto_4
    if-lez v10, :cond_a

    const/16 v0, -0x10

    move v8, v0

    goto :goto_5

    :cond_a
    move v8, v11

    :goto_5
    const/4 v6, 0x1

    goto/16 :goto_e

    :cond_b
    :goto_6
    const-string v0, "Select Error"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return v12

    :catch_0
    move-exception v0

    const/4 v10, 0x1

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v10, 0x1

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v10, 0x1

    goto :goto_a

    :catch_3
    move-exception v0

    const/4 v10, 0x1

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v10, 0x1

    goto :goto_c

    :cond_c
    :goto_7
    :try_start_2
    const-string v0, "AID/Flag Null Error"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    const/16 v0, -0xd

    return v0

    :catch_5
    move-exception v0

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_6
    move-exception v0

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_7
    move-exception v0

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to link."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_8
    move-exception v0

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find class."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_9
    move-exception v0

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    move v6, v10

    const/16 v8, -0x5a

    :goto_e
    if-eqz v6, :cond_d

    invoke-virtual {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    :cond_d
    return v8

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data
.end method

.method public blacklist agentSLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1}, Lcom/samsung/android/service/SemService/ISemService;->agent_SLOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "S_SL-ER"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "ST_SL-EX"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    const-string p0, "ST_SL-ULE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    const-string p0, "ST_SL-NCDFE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    const-string p0, "Failed to connect service."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist checkFRANetwork(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkFRANetwork() is called. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1}, Lcom/samsung/android/service/SemService/ISemService;->check_Network(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-void

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public blacklist checkSeState([B[B)I
    .locals 3

    const-string v0, "checkSeState() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->check_SeState([B[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist close()I
    .locals 2

    const-string v0, "close() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result p0

    return p0
.end method

.method public blacklist close(I)I
    .locals 2

    const-string v0, "close() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result p0

    return p0
.end method

.method public blacklist closeSpi(I)I
    .locals 3

    const-string v0, "closeSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1}, Lcom/samsung/android/service/SemService/ISemService;->close_Spi(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist continueattestation(Ljava/lang/String;I[B)I
    .locals 3

    const-string v0, "continueattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    const-string v0, "ContinueAttestation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/service/SemService/ISemService;->continue_attestation(Ljava/lang/String;I[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p0, -0x5a

    return p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v2

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist deactivateCards(I[Ljava/lang/String;[II)I
    .locals 3

    const-string v0, "deactivateCards is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_Cards(I[Ljava/lang/String;[II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist deactivateCardsAID(II[Ljava/lang/String;[II)I
    .locals 4

    const-string v0, "deactivateCardsAID is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v3, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_CardsAID(II[Ljava/lang/String;[II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v3

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v3

    :catch_3
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SEC_ESE_ServiceManager"

    const-string p1, "SemService is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/service/SemService/SemServiceManager$1;-><init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist eSEAidFactoryReset([BI)I
    .locals 3

    const-string v0, "eSEAidFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_AidFactoryReset([BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist eSEFactoryReset()I
    .locals 3

    const-string v0, "eSEFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FactoryReset()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist eSEFullFactoryReset()I
    .locals 3

    const-string v0, "eSEFullFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FullFactoryReset()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist eSELowFactoryReset()I
    .locals 3

    const-string v0, "eSELowFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->eSE_LowFactoryReset()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist esekCertificateCheck()I
    .locals 3

    const-string v0, "esekCertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "eSEK is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_1

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->esek_certificate_check()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist getAtr()I
    .locals 3

    const-string v0, "getAtr() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->getAtr_Spi()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 3

    const-string v0, "getCPLC14mode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist getHQMMemory([B)I
    .locals 3

    const-string v0, "getHQMMemory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1}, Lcom/samsung/android/service/SemService/ISemService;->get_HQMMemory([B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist getPK([B)I
    .locals 0

    const-string p0, "SEC_ESE_ServiceManager"

    const-string p1, "getPK() is called."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSCRSVersion()I
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "SCRS Version : "

    const-string v2, "Send Fail "

    const-string v3, "RSP SW : "

    const-string v4, "Select Fail "

    const-string v5, "Select SW : "

    const-string v6, "OPEN Error "

    const/16 v7, 0xe

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const/4 v8, 0x5

    new-array v8, v8, [B

    fill-array-data v8, :array_1

    sget-boolean v9, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v10, "SEC_ESE_ServiceManager"

    if-nez v9, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/16 v9, -0x5a

    const/4 v11, 0x0

    :try_start_0
    const-string/jumbo v12, "ro.factory.factory_binary"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v13, "factory"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v0, "FACTORY NOT SUPPORT"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v12

    if-eqz v12, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v1, v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v6

    if-eqz v6, :cond_9

    array-length v12, v6

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    goto/16 :goto_2

    :cond_3
    array-length v12, v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v12, -0x2

    aget-byte v15, v6, v5

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v12, -0x1

    aget-byte v16, v6, v15

    const/16 v17, -0xb

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v12, v13, :cond_8

    aget-byte v5, v6, v5

    const/16 v7, -0x70

    if-ne v5, v7, :cond_8

    aget-byte v5, v6, v15

    if-nez v5, :cond_8

    invoke-virtual {v1, v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v4

    const/16 v5, -0xc

    if-eqz v4, :cond_7

    array-length v6, v4

    if-ge v6, v13, :cond_4

    goto/16 :goto_1

    :cond_4
    array-length v6, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v6, -0x2

    aget-byte v12, v4, v3

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v6, -0x1

    aget-byte v14, v4, v12

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    if-le v6, v8, :cond_6

    aget-byte v3, v4, v3

    if-ne v3, v7, :cond_6

    aget-byte v3, v4, v12

    if-nez v3, :cond_6

    aget-byte v2, v4, v13

    invoke-static {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v4, v8

    invoke-static {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_5
    const-string v3, "Parse Version Error"

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0xd

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v5

    goto/16 :goto_3

    :cond_7
    :goto_1
    const-string v0, "Send Error"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    return v5

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v9, v17

    goto :goto_3

    :cond_9
    :goto_2
    const/16 v17, -0xb

    const-string v0, "Select Error"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v17

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    const-string v0, "Failed to link."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find class."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect service. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v11, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    :cond_a
    return v9

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        0x0t
        -0x10t
        0x0t
    .end array-data
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .locals 3

    const-string v0, "get_ESEA() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->get_ESEA()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist grdmCheckRestrictedMode()Ljava/lang/String;
    .locals 3

    const-string v0, "grdmCheckRestrictedMode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->grdm_check_restricted_mode()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist grdmCheckStatus()I
    .locals 3

    const-string v0, "grdmCheckStatus() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->grdm_Check_Status()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmGetAttesCert(I[B)I
    .locals 2

    const-string v0, "grdmGetAttesCert() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_attes_cert(I[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmGetSession()I
    .locals 3

    const-string v0, "grdmGetSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_session()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmReleaseSession()I
    .locals 3

    const-string v0, "grdmReleaseSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->grdm_release_session()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmRequestKey(I[B)I
    .locals 2

    const-string v0, "grdmRequestKey() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_request_key(I[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SEC_ESE_ServiceManager"

    const-string v0, "SemService is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist isEseSupported()Z
    .locals 4

    const-string v0, "isEseSupported() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v0

    const/16 v3, -0x64

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v2

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist isLccmSwp()I
    .locals 3

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v1, -0x5c

    const-string v2, "SEC_ESE_ServiceManager"

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->isLccmSwp()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v1
.end method

.method public blacklist isOpened()Z
    .locals 6

    const-string v0, "eSE returned error value : "

    const-string v1, "isOpened() is called."

    const-string v2, "SEC_ESE_ServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, -0xc8

    if-ne v4, v5, :cond_1

    :try_start_1
    const-string v0, "eSE is busy now"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    const-string v0, "eSE is NOT busy"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isOpened close Exception! : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    return v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isOpened openSpi Error : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist jniICD()I
    .locals 3

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v1, "SEC_ESE_ServiceManager"

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->ICD()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RE Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "USLE Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NCDF Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, -0x3e7

    return p0
.end method

.method public blacklist open()I
    .locals 2

    const-string/jumbo v0, "open() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result p0

    return p0
.end method

.method public blacklist open(I)I
    .locals 2

    const-string/jumbo v0, "open() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result p0

    return p0
.end method

.method public blacklist openSpi(I)I
    .locals 3

    const-string/jumbo v0, "openSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1}, Lcom/samsung/android/service/SemService/ISemService;->open_Spi(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist resetForCOSU(I)I
    .locals 3

    const-string/jumbo v0, "resetForCOSU : "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetForCOSU is called. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez p1, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5c

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 p1, -0x1

    if-nez p0, :cond_1

    const-string p0, "SemService is not connected"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->resetForCOSU()I

    move-result p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Call resetForCOSU Exception "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist scp11CertificateCheck()I
    .locals 3

    const-string/jumbo v0, "scp11CertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "eSEK is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_1

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->scp11_certificate_check()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist semFactory()V
    .locals 2

    const-string/jumbo v0, "semFactory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->sem_factory()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist sem_handleCCM([BI)[Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "sem_handleCCM() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCM([BI)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist sem_handleCCMCB([BI[BI)[Ljava/lang/String;
    .locals 5

    const-string v0, "ccmDataLen : "

    const-string v1, "ccmData : "

    const-string/jumbo v2, "sem_handleCCMCB() is called."

    const-string v3, "SEC_ESE_ServiceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMCB([BI[BI)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v4

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v4

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public blacklist sem_handleCCMScp11c([BI)I
    .locals 2

    const-string/jumbo v0, "sem_handleCCMScp11c() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMScp11c([BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 p0, -0x5c

    return p0
.end method

.method public blacklist send([B)[B
    .locals 8

    const-string v0, "baRsp : "

    const-string/jumbo v1, "send() for SE API is called."

    const-string v2, "SEC_ESE_ServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const v1, 0x10002

    new-array v1, v1, [B

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    array-length v5, p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Len : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, v5, v1, v4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_2

    const-string p0, "RSP is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "USLE Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NCDF Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "send exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public blacklist send([BI)[B
    .locals 7

    const-string v0, "baRsp : "

    const-string/jumbo v1, "send() for normal/secure SPI is called."

    const-string v2, "SEC_ESE_ServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const v1, 0x10002

    new-array v1, v1, [B

    if-eqz p1, :cond_1

    array-length v4, p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Len : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, v4, v1, p2}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_2

    const-string p0, "RSP is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "USLE Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "NCDF Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "send exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public blacklist sendData([BI[B)I
    .locals 4

    const-string/jumbo v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v3, 0x0

    invoke-interface {p0, p1, p2, p3, v3}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist sendData([BI[BI)I
    .locals 3

    const-string/jumbo v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist sercureLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SecureLog() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1}, Lcom/samsung/android/service/SemService/ISemService;->secureLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SL-ER"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "SL-EX"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    const-string p0, "SL-ULE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    const-string p0, "SL-NCDFE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    const-string p0, "Failed to connect service."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
    .locals 3

    const-string/jumbo v0, "startRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_request_credentials([B[BLjava/lang/String;[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist startSLOG()V
    .locals 2

    const-string v0, "START SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->start_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "S_SL-ER"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "S_SL-EX"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    const-string p0, "S_SL-ULE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    const-string p0, "S_SL-NCDFE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    const-string p0, "Failed to connect service."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist startattestation([BI[BI)I
    .locals 3

    const-string/jumbo v0, "startattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    const-string v0, "StartAttestation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_attestation([BI[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p0, -0x5a

    return p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v2

    :catch_3
    move-exception p0

    const-string p1, "Failed to connect service."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist stopRequestCredentials()V
    .locals 2

    const-string/jumbo v0, "stopRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->stop_request_credentials()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    const-string v0, "Failed to connect service."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist stopSLOG()V
    .locals 2

    const-string v0, "STOP SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string p0, "SemService is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {p0}, Lcom/samsung/android/service/SemService/ISemService;->stop_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "S_SL-ER"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "ST_SL-EX"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    const-string p0, "ST_SL-ULE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    const-string p0, "ST_SL-NCDFE"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    const-string p0, "Failed to connect service."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
