.class public Lcom/samsung/android/powerSolution/powerSolution;
.super Lcom/samsung/android/powerSolution/IpowerSolution$Stub;
.source "powerSolution.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "powerSolutinoService"


# instance fields
.field blacklist mContext:Landroid/content/Context;

.field private blacklist mSOCjump:Lcom/samsung/android/powerSolution/SOCJump;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/powerSolution/IpowerSolution$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/powerSolution/powerSolution;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/powerSolution/SOCJump;->getInstance(Landroid/content/Context;)Lcom/samsung/android/powerSolution/SOCJump;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/powerSolution/powerSolution;->mSOCjump:Lcom/samsung/android/powerSolution/SOCJump;

    const-string/jumbo p0, "powerSolutinoService"

    const-string/jumbo p1, "onCreate: powerSolution Service Constructor called.."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "\n[powerSolution Dump]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/powerSolution/powerSolution;->mSOCjump:Lcom/samsung/android/powerSolution/SOCJump;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/powerSolution/SOCJump;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
