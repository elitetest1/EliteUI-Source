.class Lcom/samsung/android/lock/LsLogFile$1;
.super Ljava/lang/Thread;
.source "LsLogFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lock/LsLogFile;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    const-string p0, "!@LSS log start"

    const-string v0, "LsLogFile"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v1, v1, p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/lock/LsLogType;->containsProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v1, v1, p0

    invoke-static {v1}, Lcom/samsung/android/lock/LsLogFile;->-$$Nest$smshowStringLog(Lcom/samsung/android/lock/LsLogType;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "!@LSS log end"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
