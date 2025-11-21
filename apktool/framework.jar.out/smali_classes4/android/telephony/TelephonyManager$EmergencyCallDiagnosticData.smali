.class public final Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmergencyCallDiagnosticData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    }
.end annotation


# static fields
.field private static blacklist sUnsetLogcatStartTime:J = -0x1L


# instance fields
.field private blacklist mCollectLogcat:Z

.field private blacklist mCollectTelecomDumpsys:Z

.field private blacklist mCollectTelephonyDumpsys:Z

.field private blacklist mLogcatStartTimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsUnsetLogcatStartTime()J
    .locals 2

    sget-wide v0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->sUnsetLogcatStartTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>(ZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelecomDumpsys:Z

    iput-boolean p2, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelephonyDumpsys:Z

    iput-wide p3, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mLogcatStartTimeMillis:J

    sget-wide p1, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->sUnsetLogcatStartTime:J

    cmp-long p1, p3, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectLogcat:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(ZZJLandroid/telephony/TelephonyManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;-><init>(ZZJ)V

    return-void
.end method


# virtual methods
.method public blacklist getLogcatCollectionStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mLogcatStartTimeMillis:J

    return-wide v0
.end method

.method public blacklist isLogcatCollectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectLogcat:Z

    return p0
.end method

.method public blacklist isTelecomDumpsysCollectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelecomDumpsys:Z

    return p0
.end method

.method public blacklist isTelephonyDumpsysCollectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelephonyDumpsys:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmergencyCallDiagnosticData{mCollectTelecomDumpsys="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelecomDumpsys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCollectTelephonyDumpsys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelephonyDumpsys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCollectLogcat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectLogcat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLogcatStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mLogcatStartTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
