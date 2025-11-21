.class public Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
.super Ljava/lang/Object;
.source "SemInfoExtractionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$UIBundleKey;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;
    }
.end annotation


# static fields
.field private static final blacklist EXTRACTED_INFO_DATA:Ljava/lang/String; = "SemExtractedInfo"

.field private static final blacklist EXTRACTION_DATA_TYPE:Ljava/lang/String; = "data_type"

.field private static final blacklist EXTRACTION_REQ_DATA:Ljava/lang/String; = "req_data"

.field private static final blacklist EXTRACTION_REQ_TIME:Ljava/lang/String; = "req_time"

.field private static final blacklist MSG_EXTRACTION_CALCEL:I = 0x1ba1

.field private static final blacklist MSG_EXTRACTION_END:I = 0x1ba0

.field private static final blacklist MSG_EXTRACTION_START:I = 0x1b9f

.field private static final blacklist STRING_DATA_TYPE:I = 0x1

.field private static final blacklist STROKE_DATA_TYPE:I = 0x3

.field private static blacklist TAG:Ljava/lang/String; = "semInfoextration"

.field private static final blacklist URI_DATA_TYPE:I = 0x2


# instance fields
.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

.field private blacklist mInfoExtractionService:Landroid/os/IBinder;

.field public blacklist mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

.field private blacklist mRequestNumber:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmInfoExtractionService(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestNumber(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestInfoExtraction(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;Landroid/os/IBinder;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "SemInfoExtractionManager setting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->isPenFeatureModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemInfoExtractionManager call by : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string p1, "SemInfoExtraction only use for Pen Feature models."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string p1, "Could not get the SemInfoExtraction service. -> context is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist bindInfoExtractionService()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v0, "mContext is NULL -> can\'t try to bind with InfoExtractionService! "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.service.hermes.InfoExtractionService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.service.airviewdictionary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind with InfoExtractionService service!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method private blacklist isPenFeatureModel(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_0

    sget-object p1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPenFeatureModel : Pen is not supported, uspLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestInfoExtraction data type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "req_time"

    iget-wide v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "data_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string/jumbo v2, "req_data"

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    sget-object p3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t make data type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x0

    const/16 p3, 0x1b9f

    invoke-static {p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance p3, Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;-><init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;)V

    invoke-direct {p3, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p1, :cond_3

    :try_start_0
    new-instance p0, Landroid/os/Messenger;

    invoke-direct {p0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "request Extraction : success"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "request Extraction : InfoExtractionService is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private blacklist setRequestNumber()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-void
.end method

.method private blacklist startExtraction(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "mConnection is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$1;-><init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object p1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "start : Binding to InfoExtractionService..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->bindInfoExtractionService()Z

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "mConnection is not NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "mInfoExtractionService == null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->bindInfoExtractionService()Z

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mInfoExtractionService != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist addResultRule(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string p1, "addResultRule doesn\'t support in this version"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist extract(Landroid/net/Uri;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    iget-wide p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide p0
.end method

.method public blacklist extract(Lcom/samsung/android/infoextraction/SemStrokeData;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    iget-wide p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide p0
.end method

.method public whitelist extract(Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    iget-wide p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide p0
.end method

.method public whitelist extract(Ljava/util/ArrayList;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/infoextraction/SemStrokeData;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    iget-wide p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide p0
.end method

.method public blacklist hideLinkPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "hideLinkPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.service.airviewdictionary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.service.hermes.HermesTickerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dismiss"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public blacklist setInfoExtractionListener(Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    return-void

    :cond_0
    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string p1, "infoExtractionListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setOnExtractionCompletedListener(Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    return-void

    :cond_0
    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onExtractionCompletedListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist showLinkPreview(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "infoExtractionListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showLinkPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.service.airviewdictionary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.service.hermes.HermesTickerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "contents"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "position"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "dismiss"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "urlStr is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist training(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "training doesn\'t support in this version"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
