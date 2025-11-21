.class public Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
.super Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.source "CurrentUserServiceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundServiceInfo"
.end annotation


# instance fields
.field private final blacklist mMetadata:Landroid/os/Bundle;

.field private final blacklist mVersion:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;ILandroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    iput p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 6

    invoke-static {p2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->parseUid(Landroid/content/pm/ResolveInfo;)I

    move-result v2

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->parseVersion(Landroid/content/pm/ResolveInfo;)I

    move-result v4

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist parseUid(Landroid/content/pm/ResolveInfo;)I
    .locals 3

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string/jumbo v1, "serviceIsMultiuser"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v2, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static blacklist parseVersion(Landroid/content/pm/ResolveInfo;)I
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v0, "serviceVersion"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public blacklist getMetadata()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getVersion()I
    .locals 0

    iget p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
