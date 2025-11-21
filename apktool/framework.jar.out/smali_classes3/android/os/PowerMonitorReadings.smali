.class public final Landroid/os/PowerMonitorReadings;
.super Ljava/lang/Object;
.source "PowerMonitorReadings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerMonitorReadings$PowerMonitorGranularity;
    }
.end annotation


# static fields
.field public static final whitelist ENERGY_UNAVAILABLE:I = -0x1

.field public static final blacklist GRANULARITY_FINE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist GRANULARITY_UNSPECIFIED:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnergyUws:[J

.field private final blacklist mGranularity:I

.field private final blacklist mPowerMonitors:[Landroid/os/PowerMonitor;

.field private final blacklist mTimestampsMs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/PowerMonitorReadings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/PowerMonitorReadings$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>([Landroid/os/PowerMonitor;[J[JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    iput-object p2, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    iput-object p3, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    iput p4, p0, Landroid/os/PowerMonitorReadings;->mGranularity:I

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/os/PowerMonitor;)I
    .locals 0

    iget p0, p0, Landroid/os/PowerMonitor;->index:I

    return p0
.end method


# virtual methods
.method public whitelist getConsumedEnergy(Landroid/os/PowerMonitor;)J
    .locals 2

    iget-object v0, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    sget-object v1, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public blacklist getGranularity()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget p0, p0, Landroid/os/PowerMonitorReadings;->mGranularity:I

    return p0
.end method

.method public whitelist getTimestampMillis(Landroid/os/PowerMonitor;)J
    .locals 2

    iget-object v0, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    sget-object v1, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " monitors: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/PowerMonitor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
