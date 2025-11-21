.class public Landroid/app/admin/DevicePolicyEventLogger;
.super Ljava/lang/Object;
.source "DevicePolicyEventLogger.java"


# instance fields
.field private blacklist mAdminPackageName:Ljava/lang/String;

.field private blacklist mBooleanValue:Z

.field private final blacklist mEventId:I

.field private blacklist mIntValue:I

.field private blacklist mKnoxBundleValue:Landroid/os/Bundle;

.field private blacklist mStringArrayValue:[Ljava/lang/String;

.field private blacklist mTimePeriodMs:J


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    return-void
.end method

.method public static blacklist createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 1

    new-instance v0, Landroid/app/admin/DevicePolicyEventLogger;

    invoke-direct {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;-><init>(I)V

    return-object v0
.end method

.method private static blacklist stringArrayValueToBytes([Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/stats/devicepolicy/nano/StringList;

    invoke-direct {v0}, Landroid/stats/devicepolicy/nano/StringList;-><init>()V

    iput-object p0, v0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getAdminPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getBoolean()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    return p0
.end method

.method public blacklist getEventId()I
    .locals 0

    iget p0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    return p0
.end method

.method public blacklist getInt()I
    .locals 0

    iget p0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    return p0
.end method

.method public blacklist getKnoxBundleValue()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getStringArray()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getTimePeriod()J
    .locals 2

    iget-wide v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    return-wide v0
.end method

.method public blacklist setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    return-object p0
.end method

.method public blacklist setInt(I)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    return-object p0
.end method

.method public blacklist setKnoxBundleValue(Landroid/os/Bundle;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public blacklist setStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 3

    const-string/jumbo v0, "values parameter cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p3

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    array-length p1, p3

    invoke-static {p3, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public blacklist setStrings(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 3

    const-string/jumbo v0, "values parameter cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    array-length p1, p2

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public varargs blacklist setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-wide p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    return-object p0
.end method

.method public blacklist write()V
    .locals 9

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->stringArrayValueToBytes([Ljava/lang/String;)[B

    move-result-object v8

    iget v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    iget-object v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    iget-boolean v5, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    iget-wide v6, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    const/16 v1, 0x67

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZJ[B)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "aN"

    iget v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "iV"

    iget v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bV"

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "tpms"

    iget-wide v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "kB"

    iget-object v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    const-string/jumbo v2, "saV"

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    const-string/jumbo v3, "targetPackageName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "apN"

    iget-object p0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->logDpmsKA(Landroid/os/Bundle;)V

    return-void
.end method
