.class public Lcom/samsung/android/powerSolution/powerSolutionManager;
.super Ljava/lang/Object;
.source "powerSolutionManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "powerSolutionManager"


# instance fields
.field private blacklist service:Lcom/samsung/android/powerSolution/IpowerSolution;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/powerSolution/IpowerSolution;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "powerSolutionManager"

    if-nez p1, :cond_0

    const-string p0, "IStartService is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "powerSolutionManager ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/powerSolution/powerSolutionManager;->service:Lcom/samsung/android/powerSolution/IpowerSolution;

    return-void
.end method


# virtual methods
.method public blacklist getMyService()Lcom/samsung/android/powerSolution/IpowerSolution;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/powerSolution/powerSolutionManager;->service:Lcom/samsung/android/powerSolution/IpowerSolution;

    return-object p0
.end method
