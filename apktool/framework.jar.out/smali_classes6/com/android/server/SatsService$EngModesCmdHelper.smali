.class final Lcom/android/server/SatsService$EngModesCmdHelper;
.super Ljava/lang/Object;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngModesCmdHelper"
.end annotation


# static fields
.field private static final blacklist AT_CMD_EM_SEQ_NO:I = 0x3

.field private static final blacklist AT_CMD_EM_WRITING_END:Ljava/lang/String; = "FFF"

.field private static final blacklist AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final blacklist AT_RESPONSE_EXCEPION:Ljava/lang/String; = "NG,EXCEPTION"

.field private static final blacklist AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG,DATA MISSED"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"


# instance fields
.field private final blacklist lCmdParams:[Ljava/lang/String;

.field private blacklist mCmdCounter:I

.field private blacklist mCmdData:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/server/SatsService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/SatsService;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "0,5,"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->lCmdParams:[Ljava/lang/String;

    const-string p1, "SatsService"

    const-string v0, "Initialized"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    return-void
.end method

.method private blacklist getDataIndex()I
    .locals 0

    iget p0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    return p0
.end method

.method private blacklist getTotalData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    return-object p0
.end method

.method private blacklist init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    return-void
.end method

.method private blacklist proceedlCmd(Landroid/content/Context;Ljava/lang/String;I)[B
    .locals 7

    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getDataIndex()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/SatsService$EngModesCmdHelper;->appendData(ILjava/lang/String;)Z

    move-result v0

    const-string v5, "+ENGMODES:"

    const/4 v6, 0x0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to append command SN-"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " EN-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getDataIndex()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",NG,DATA MISSED SN-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getDataIndex()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\r\n\r\nOK\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->lCmdParams:[Ljava/lang/String;

    aget-object p3, p3, v6

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "0,2,"

    :cond_2
    iget-object p3, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->this$0:Lcom/android/server/SatsService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getTotalData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/server/SatsService;->commandForESS(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",OK\r\n\r\nOK\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist appendData(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    iput-object p2, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    return v0

    :cond_0
    iget v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    iput p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist processCmd(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->lCmdParams:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/SatsService$EngModesCmdHelper;->proceedlCmd(Landroid/content/Context;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->this$0:Lcom/android/server/SatsService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SatsService;->commandForESS(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to excute ENGMODES AT command : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "+ENGMODES:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",NG,EXCEPTION\r\n\r\nOK\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
