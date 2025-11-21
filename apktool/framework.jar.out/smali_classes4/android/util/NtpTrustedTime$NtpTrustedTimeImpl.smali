.class final Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;
.super Landroid/util/NtpTrustedTime;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTrustedTimeImpl"
.end annotation


# instance fields
.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/util/NtpTrustedTime-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized blacklist getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "NtpTrustedTime"

    const-string v1, "getConnectivityManager: no ConnectivityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static blacklist saturatedCast(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist getDefaultNetwork()Landroid/net/Network;
    .locals 0

    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;
    .locals 7

    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v1, "ntp_server"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpServerSetting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const v1, 0x1070139

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    const-string/jumbo v1, "ro.csc.countryiso_code"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v1, 0x107013c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v4, "HK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v1, 0x107013f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v4, "TW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x1070140

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "Asia"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x107013b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "Europe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x107013e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, "America"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x107013a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    const v1, 0x107013d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v6, v1, v5

    invoke-static {v6}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    move-object v1, v3

    goto :goto_2

    :catch_0
    move-object v1, v2

    :goto_2
    const v3, 0x10e0125

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-string/jumbo v3, "ntp_timeout"

    invoke-static {v0, v3, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    int-to-long v3, p0

    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance v2, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v2, v1, p0}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    :goto_3
    return-object v2
.end method

.method public blacklist isNetworkConnected(Landroid/net/Network;)Z
    .locals 1

    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "NtpTrustedTime"

    const-string p1, "getNetwork: no connectivity"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;
    .locals 7

    new-instance p0, Landroid/net/SntpClient;

    invoke-direct {p0}, Landroid/net/SntpClient;-><init>()V

    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 p2, 0x7b

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result p2

    :goto_0
    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result p3

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide p1

    const-wide/16 v0, 0x2

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v5

    invoke-virtual {p0}, Landroid/net/SntpClient;->getServerSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    new-instance v0, Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {p0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJILjava/net/InetSocketAddress;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
