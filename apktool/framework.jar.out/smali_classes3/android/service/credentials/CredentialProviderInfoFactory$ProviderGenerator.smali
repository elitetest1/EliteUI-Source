.class Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
.super Ljava/lang/Object;
.source "CredentialProviderInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/CredentialProviderInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderGenerator"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisableSystemAppVerificationForTests:Z

.field private final blacklist mPp:Landroid/app/admin/PackagePolicy;

.field private final blacklist mProviderFilter:I

.field private final blacklist mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    iput-object p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    iput-boolean p3, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mDisableSystemAppVerificationForTests:Z

    iput p4, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    return-void
.end method

.method private blacklist addProvider(Landroid/credentials/CredentialProviderInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->isProviderAllowedWithFilter(Landroid/credentials/CredentialProviderInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v1

    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->isPackageAllowed(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist isPackageAllowed(ZLjava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p2, p1}, Landroid/app/admin/PackagePolicy;->isPackageAllowed(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private blacklist isProviderAllowedWithFilter(Landroid/credentials/CredentialProviderInfo;)Z
    .locals 2

    iget v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    iget p0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public blacklist addSystemProviders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addProvider(Landroid/credentials/CredentialProviderInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist addUserProviders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addProvider(Landroid/credentials/CredentialProviderInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
