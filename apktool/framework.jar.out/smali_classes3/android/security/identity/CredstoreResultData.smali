.class Landroid/security/identity/CredstoreResultData;
.super Landroid/security/identity/ResultData;
.source "CredstoreResultData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredstoreResultData$EntryData;,
        Landroid/security/identity/CredstoreResultData$Builder;
    }
.end annotation


# instance fields
.field blacklist mAuthenticatedData:[B

.field private blacklist mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreResultData$EntryData;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mFeatureVersion:I

.field blacklist mMessageAuthenticationCode:[B

.field blacklist mSignature:[B

.field blacklist mStaticAuthenticationData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/security/identity/CredstoreResultData;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/security/identity/ResultData;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/security/identity/CredstoreResultData;->mFeatureVersion:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mSignature:[B

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    return-void
.end method

.method private blacklist getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;
    .locals 0

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/security/identity/CredstoreResultData$EntryData;

    return-object p0
.end method


# virtual methods
.method public whitelist getAuthenticatedData()[B
    .locals 0

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    return-object p0
.end method

.method public whitelist getEntry(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/security/identity/CredstoreResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/security/identity/CredstoreResultData$EntryData;->mValue:[B

    return-object p0
.end method

.method public whitelist getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getMessageAuthenticationCode()[B
    .locals 0

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    return-object p0
.end method

.method public whitelist getNamespaces()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/identity/CredstoreResultData$EntryData;

    iget v1, v1, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method blacklist getSignature()[B
    .locals 2

    iget v0, p0, Landroid/security/identity/CredstoreResultData;->mFeatureVersion:I

    const v1, 0x3163d

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mSignature:[B

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist getStaticAuthenticationData()[B
    .locals 0

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    return-object p0
.end method

.method public whitelist getStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/security/identity/CredstoreResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget p0, p0, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    return p0
.end method
