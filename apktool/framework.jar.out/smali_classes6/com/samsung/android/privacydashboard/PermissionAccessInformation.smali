.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
.super Ljava/lang/Object;
.source "PermissionAccessInformation.java"


# static fields
.field private static final blacklist MIN_MS_SEC:J = 0xea60L


# instance fields
.field private blacklist mAccessTime:J

.field private blacklist mIsBackground:Z

.field private blacklist mOp:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mProxyAttributionTag:Ljava/lang/String;

.field private blacklist mProxyPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    iput p2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    iput-object p3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    const-string p1, ""

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p1

    :goto_0
    iput-object p5, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    iput-wide p7, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, p1

    :goto_1
    iput-object p4, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHINA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    iget-wide v4, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    iget-wide v6, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    div-long/2addr v6, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    iget v4, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    iget v4, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    iget-boolean v4, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public blacklist getAccessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    return-wide v0
.end method

.method public blacklist getOp()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getProxyAttributionTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getProxyPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 11

    iget v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionAccessInformation{op="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', proxyPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', proxyAttributionTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
