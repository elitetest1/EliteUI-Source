.class Landroid/app/ForegroundServiceTypePolicy$RegularPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegularPermission"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 8

    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I

    move-result p0

    if-eqz p0, :cond_4

    sget-object p1, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    iget-object p2, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-class p1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/virtual/VirtualDevice;

    invoke-virtual {p4}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result p4

    iget-object p5, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    invoke-static {v1, p4, p5}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I

    move-result p0

    if-nez p0, :cond_3

    return p0

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return p0
.end method

.method blacklist checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I
    .locals 0

    new-instance p0, Landroid/content/AttributionSource;

    const/4 p4, 0x0

    invoke-direct {p0, p3, p5, p4, p7}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, p2, p0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p3

    const/4 p4, 0x2

    const/4 p5, -0x1

    if-ne p3, p4, :cond_0

    return p5

    :cond_0
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p2

    const/4 p4, 0x0

    if-ne p2, p5, :cond_2

    if-nez p3, :cond_1

    return p4

    :cond_1
    return p5

    :cond_2
    const-class p7, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2, p0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p1, 0x1

    if-eq p0, p1, :cond_8

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3

    return p5

    :cond_3
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->-$$Nest$smisFgsTypeFgPermissionEnforcementEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p6, :cond_4

    goto :goto_0

    :cond_4
    return p5

    :cond_5
    :goto_0
    return p4

    :cond_6
    if-nez p3, :cond_7

    return p4

    :cond_7
    return p5

    :cond_8
    if-eqz p6, :cond_9

    if-ne p3, p1, :cond_9

    return p4

    :cond_9
    return p5

    :cond_a
    return p4
.end method
