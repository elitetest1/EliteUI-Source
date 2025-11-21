.class public Lcom/samsung/android/powerSolution/SOCJump;
.super Ljava/lang/Object;
.source "SOCJump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/powerSolution/SOCJump$MyBroadcastReceiver;,
        Lcom/samsung/android/powerSolution/SOCJump$SOC;
    }
.end annotation


# static fields
.field protected static blacklist mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC; = null

.field protected static blacklist mFileObject:Ljava/io/File; = null

.field protected static blacklist mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC; = null

.field protected static final blacklist mSocFilePath:Ljava/lang/String; = "/data/log/eSOC.txt"

.field private static blacklist mSocjump:Lcom/samsung/android/powerSolution/SOCJump;


# instance fields
.field blacklist mContext:Landroid/content/Context;

.field blacklist mSocFilter:Landroid/content/IntentFilter;

.field blacklist mSocJumpReciver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdateFormat(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/powerSolution/SOCJump;->dateFormat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/powerSolution/SOCJump$SOC;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/powerSolution/SOCJump$SOC;-><init>(I)V

    sput-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/powerSolution/SOCJump$MyBroadcastReceiver;

    invoke-direct {p1}, Lcom/samsung/android/powerSolution/SOCJump$MyBroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocJumpReciver:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocJumpReciver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist dateFormat(J)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/powerSolution/SOCJump;
    .locals 1

    sget-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/powerSolution/SOCJump;

    invoke-direct {v0, p0}, Lcom/samsung/android/powerSolution/SOCJump;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    :cond_0
    sget-object p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    return-object p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "[SOCJump]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    const-string v0, "/data/log/eSOC.txt"

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object v0, p2

    :goto_1
    move-object v1, v0

    :goto_2
    move-object p0, p1

    goto :goto_6

    :catch_3
    move-exception p1

    move-object p2, p0

    move-object v0, p2

    :goto_3
    move-object v1, v0

    :goto_4
    move-object p0, p1

    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    return-void

    :catchall_3
    move-exception p0

    :goto_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    throw p0
.end method
