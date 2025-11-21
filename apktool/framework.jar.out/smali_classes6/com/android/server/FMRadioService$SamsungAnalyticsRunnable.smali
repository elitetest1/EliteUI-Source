.class Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAnalyticsRunnable"
.end annotation


# instance fields
.field private blacklist packageName:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;

.field private blacklist version:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/FMRadioService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;->this$0:Lcom/android/server/FMRadioService;

    iget-object v1, p0, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;->version:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/FMRadioService;->-$$Nest$msendInfoSamsungAnalytics(Lcom/android/server/FMRadioService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SamsungAnalyticsRunnable Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
