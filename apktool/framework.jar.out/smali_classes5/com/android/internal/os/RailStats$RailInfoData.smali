.class public Lcom/android/internal/os/RailStats$RailInfoData;
.super Ljava/lang/Object;
.source "RailStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RailStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RailInfoData"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RailInfoData"


# instance fields
.field public blacklist energyUsedSinceBootuWs:J

.field public blacklist index:J

.field public blacklist railName:Ljava/lang/String;

.field public blacklist subSystemName:Ljava/lang/String;

.field public blacklist timestampSinceBootMs:J


# direct methods
.method private constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/RailStats$RailInfoData;->index:J

    iput-object p3, p0, Lcom/android/internal/os/RailStats$RailInfoData;->railName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/os/RailStats$RailInfoData;->subSystemName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    iput-wide p7, p0, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    return-void
.end method

.method synthetic constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;JJLcom/android/internal/os/RailStats-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/os/RailStats$RailInfoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public blacklist printData()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/os/RailStats$RailInfoData;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RailInfoData"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RailName = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->railName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SubSystemName = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->subSystemName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TimestampSinceBootMs = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EnergyUsedSinceBootuWs = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
