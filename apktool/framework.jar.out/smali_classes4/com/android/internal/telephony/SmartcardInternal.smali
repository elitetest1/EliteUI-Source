.class public Lcom/android/internal/telephony/SmartcardInternal;
.super Ljava/lang/Object;
.source "SmartcardInternal.java"


# static fields
.field public static final blacklist SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final blacklist SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final blacklist SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final blacklist SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final blacklist SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final blacklist SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final blacklist SMARTCARD_IO_SUCCESS:I = 0x0

.field static final blacklist mLogTag:Ljava/lang/String; = "SmartcardInternal"

.field private static volatile blacklist scInstance:Lcom/android/internal/telephony/SmartcardInternal;

.field private static volatile blacklist scInstance2:Lcom/android/internal/telephony/SmartcardInternal;


# instance fields
.field private blacklist pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    new-instance v0, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccPcscProvider;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "init pcscInstance : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartcardInternal"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static greylist getInstance()Lcom/android/internal/telephony/SmartcardInternal;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/SmartcardInternal;->getInstance(I)Lcom/android/internal/telephony/SmartcardInternal;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getInstance(I)Lcom/android/internal/telephony/SmartcardInternal;
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SmartcardInternal"

    const-string v0, "getInstance fail for invlalid phoneId"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v0, :cond_2

    const-class v0, Lcom/android/internal/telephony/SmartcardInternal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v1, :cond_1

    const-string v1, "SmartcardInternal"

    const-string v2, "Making an Instance phoneid 0..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/telephony/SmartcardInternal;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmartcardInternal;-><init>(I)V

    sput-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const-string p0, "SmartcardInternal"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "return scInstance : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    return-object p0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/SmartcardInternal;->scInstance2:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v0, :cond_5

    const-class v0, Lcom/android/internal/telephony/SmartcardInternal;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance2:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v1, :cond_4

    const-string v1, "SmartcardInternal"

    const-string v2, "Making an Instance phoneid 1..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/telephony/SmartcardInternal;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmartcardInternal;-><init>(I)V

    sput-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance2:Lcom/android/internal/telephony/SmartcardInternal;

    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_1
    const-string p0, "SmartcardInternal"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "return scInstance2 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance2:Lcom/android/internal/telephony/SmartcardInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/telephony/SmartcardInternal;->scInstance2:Lcom/android/internal/telephony/SmartcardInternal;

    return-object p0
.end method


# virtual methods
.method public greylist connect()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result p0

    return p0
.end method

.method public greylist disconnect(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    move-result p0

    return p0
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    const-string p0, "SmartcardInternal"

    const-string v0, "finalize"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist getATR([B)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I

    move-result p0

    return p0
.end method

.method public greylist transmit(I[B[B)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result p0

    return p0
.end method
