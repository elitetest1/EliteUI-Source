.class Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;
.super Landroid/os/Handler;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAFDDBManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 12

    const-string v0, "in update,  mSMDBInitReTryCnt="

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x1388

    const-string v4, "IAFDDBManager"

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/16 v7, 0xfc

    const/16 v8, 0xfd

    const/4 v9, 0x1

    if-eq v1, v7, :cond_7

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfe

    const/16 v10, 0xfa

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    iget-object v7, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v7}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v11

    invoke-direct {v0, v7, v11}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Landroid/os/Handler;)V

    invoke-static {p1, v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI_SM:Landroid/net/Uri;

    iget-object v7, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v7}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    move-result-object v7

    invoke-virtual {p1, v0, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1, v9}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmRegisteredHotfixDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v10, 0x3e8

    invoke-virtual {p1, v0, v10, v11}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1, v6}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V

    sget p1, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    add-int/2addr p1, v9

    sput p1, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_c

    sget p1, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    if-ge p1, v5, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mSMDBInitReTryCnt="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v3}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v10, :cond_c

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmRegisteredHotfixDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z

    move-result p1

    if-nez p1, :cond_6

    :try_start_1
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Landroid/os/Handler;)V

    invoke-static {p1, v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mUriHotfixIAFDDB_TB:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v9, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1, v9}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredHotfixDBObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1, v6}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredHotfixDBObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V

    sget p1, Lcom/sec/android/iaft/IAFDDBManager;->mHotfixDBInitReTryCnt:I

    add-int/2addr p1, v9

    sput p1, Lcom/sec/android/iaft/IAFDDBManager;->mHotfixDBInitReTryCnt:I

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_c

    sget p1, Lcom/sec/android/iaft/IAFDDBManager;->mHotfixDBInitReTryCnt:I

    if-ge p1, v5, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mHotfixDBInitReTryCnt="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mHotfixDBInitReTryCnt:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p0

    invoke-virtual {p0, v10}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v3}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_7
    :goto_2
    sget-boolean v1, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    sput-boolean v9, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_9

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitIAFDDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V

    goto :goto_3

    :cond_9
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v8, :cond_b

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    sget-object v1, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI_SM:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-static {p1, v9, v1, v7}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitDBByURIOrFile(Lcom/sec/android/iaft/IAFDDBManager;ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIfadDBData(Lcom/sec/android/iaft/IAFDDBManager;)[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    aput-object p1, v0, v9

    goto :goto_3

    :cond_a
    sget p1, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    add-int/2addr p1, v9

    sput p1, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_b

    sget p1, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    if-ge p1, v5, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$msyncDBType(Lcom/sec/android/iaft/IAFDDBManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    sput-boolean v6, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    :cond_c
    :goto_5
    return-void
.end method
