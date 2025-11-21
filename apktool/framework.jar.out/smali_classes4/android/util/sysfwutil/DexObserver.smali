.class public Landroid/util/sysfwutil/DexObserver;
.super Ljava/lang/Object;
.source "DexObserver.java"


# static fields
.field private static final blacklist CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final blacklist TAG:Ljava/lang/String; = "DexObserverFW"

.field private static final blacklist USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final blacklist USBPD_TYPE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"


# instance fields
.field private volatile blacklist mDexMode:Z

.field private final blacklist mDexStateLock:Ljava/lang/Object;

.field private final blacklist mDexUEventObserver:Landroid/os/UEventObserver;

.field private final blacklist mListeners:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/util/sysfwutil/DexConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mSemiDexMode:Z

.field private blacklist mTestModeOn:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/util/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;
    .locals 0

    iget-object p0, p0, Landroid/util/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetDexState(Landroid/util/sysfwutil/DexObserver;ILandroid/os/UEventObserver$UEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/sysfwutil/DexObserver;->setDexState(ILandroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v1, p0, Landroid/util/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    new-instance v0, Landroid/util/sysfwutil/DexObserver$1;

    invoke-direct {v0, p0}, Landroid/util/sysfwutil/DexObserver$1;-><init>(Landroid/util/sysfwutil/DexObserver;)V

    iput-object v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexUEventObserver:Landroid/os/UEventObserver;

    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v1, :cond_0

    const-string v1, " TestModeOn"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "Started"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexObserverFW"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/sysfwutil/DexObserver;->checkDexStatebySysfs()V

    const-string p0, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist checkDexStatebySysfs()V
    .locals 8

    const-string v0, "/sys/class/sec/ccic/usbpd_type"

    const-string v1, "/sys/class/sec/ccic/usbpd_ids"

    const-string v2, "DexObserverFW"

    const-string v3, "checkDexStatebySysfs() USBPD_IDS["

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_0
    const-string v1, "USBPD IDS File does not exist"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    :catchall_4
    move-exception p0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception p0

    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    :try_start_10
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_1
    const-string v0, "USBPD TYPE File does not exist"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], USBPD_TYPE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_2
    const-string v0, "checkDexStatebySysfs() USBPD_IDS or USBPD_TYPE is NULL!!"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    const-string v0, "200"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const-string v0, "04e8:a027"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_4

    const-string v0, "checkDexStatebySysfs() : SEMI DEX MODE is ON"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_7

    :cond_5
    const-string v0, "114"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_6

    const-string v0, "checkDexStatebySysfs() : DEX MODE is ON"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    :goto_7
    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_8

    const-string v0, "checkDexStatebySysfs() : Update DeX Connection State"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Landroid/util/sysfwutil/DexObserver;->onUpdateDexMode()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IllegalArgumentException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File not Found exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method

.method private blacklist onUpdateDexMode()V
    .locals 4

    const-string/jumbo v0, "setDexMode() : mDexMode "

    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v1, :cond_0

    const-string v1, "DexObserverFW"

    const-string/jumbo v2, "setDexMode() : delay ++"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x7530

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "DexObserverFW"

    const-string/jumbo v2, "setDexMode() : delay --"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    const-string v2, "DexObserverFW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSemiDexMode "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroid/util/sysfwutil/DexObserver$2;

    const-string/jumbo v2, "notifyListeners"

    invoke-direct {v0, p0, v2}, Landroid/util/sysfwutil/DexObserver$2;-><init>(Landroid/util/sysfwutil/DexObserver;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/sysfwutil/DexObserver$2;->start()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist setDexState(ILandroid/os/UEventObserver$UEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDockState() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexObserverFW"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x72

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    iput-boolean p1, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_0

    :cond_0
    const-string p1, "USBPD_IDS"

    invoke-virtual {p2, p1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "04e8:a027"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_0

    :cond_1
    :pswitch_0
    iput-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/util/sysfwutil/DexObserver;->onUpdateDexMode()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addListener(Landroid/util/sysfwutil/DexConnectionListener;)V
    .locals 0

    iget-object p0, p0, Landroid/util/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "Current DexModeObserver state of SemiDeXMode :"

    const-string v1, "Current DexModeObserver state of DeXMode :"

    iget-object v2, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isDexModeOn()Z
    .locals 4

    const-string v0, "isDexModeOn() : "

    iget-object v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "DexObserverFW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isSemiDexModeOn()Z
    .locals 4

    const-string v0, "isSemiDexModeOn() : "

    iget-object v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "DexObserverFW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
