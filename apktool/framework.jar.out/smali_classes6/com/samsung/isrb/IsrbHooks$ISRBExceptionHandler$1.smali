.class Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;
.super Ljava/lang/Object;
.source "IsrbHooks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smgetEnterIdle()Z

    move-result p0

    const-string v0, "IsrbHooks"

    if-eqz p0, :cond_0

    const-string/jumbo p0, "successfully enter idle"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    const-string p0, "can not enter idle, we should back to rescue party"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "exit frorm loop to next step"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
