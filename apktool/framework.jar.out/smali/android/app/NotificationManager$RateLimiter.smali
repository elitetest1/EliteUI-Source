.class Landroid/app/NotificationManager$RateLimiter;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateLimiter"
.end annotation


# static fields
.field private static final blacklist RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;


# instance fields
.field private final blacklist mCounterName:Ljava/lang/String;

.field private final blacklist mInputRateEstimator:Landroid/service/notification/RateEstimator;

.field private final blacklist mLimitRate:F

.field private blacklist mLogSilencedUntil:Ljava/time/Instant;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOutputRateEstimator:Landroid/service/notification/RateEstimator;

.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager$RateLimiter;->RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/service/notification/RateEstimator;

    invoke-direct {p1}, Landroid/service/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    new-instance p1, Landroid/service/notification/RateEstimator;

    invoke-direct {p1}, Landroid/service/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    iput-object p2, p0, Landroid/app/NotificationManager$RateLimiter;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/NotificationManager$RateLimiter;->mCounterName:Ljava/lang/String;

    iput p4, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method blacklist eventExceedsRate()Z
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/InstantSource;->millis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v2, v0, v1}, Landroid/service/notification/RateEstimator;->update(J)V

    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v2, v0, v1}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v0

    iget p0, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist recordAccepted()V
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    iget-object p0, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {p0}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object p0

    invoke-interface {p0}, Ljava/time/InstantSource;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/RateEstimator;->update(J)V

    return-void
.end method

.method blacklist recordRejected(Landroid/app/NotificationManager$NotificationKey;)V
    .locals 8

    iget-object v0, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/app/NotificationManager;->-$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfLogNmThrottling()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager$RateLimiter;->this$0:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager$RateLimiter;->mCounterName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->incrementCounter(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring error while trying to log "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/NotificationManager$RateLimiter;->mCounterName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager$RateLimiter;->mName:Ljava/lang/String;

    iget v5, p0, Landroid/app/NotificationManager$RateLimiter;->mLimitRate:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Landroid/app/NotificationManager$RateLimiter;->mInputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v6, v1, v2}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Landroid/app/NotificationManager$RateLimiter;->mOutputRateEstimator:Landroid/service/notification/RateEstimator;

    invoke-virtual {v7, v1, v2}, Landroid/service/notification/RateEstimator;->getRate(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v4, p1, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Shedding %s of %s, rate limit (%s) exceeded: input %s, output would be %s"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Landroid/app/NotificationManager$RateLimiter;->RATE_LIMITER_LOG_INTERVAL:Ljava/time/Duration;

    invoke-virtual {v0, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Landroid/app/NotificationManager$RateLimiter;->mLogSilencedUntil:Ljava/time/Instant;

    return-void
.end method
