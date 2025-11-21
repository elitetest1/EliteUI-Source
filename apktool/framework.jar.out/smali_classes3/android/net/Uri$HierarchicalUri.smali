.class Landroid/net/Uri$HierarchicalUri;
.super Landroid/net/Uri$AbstractHierarchicalUri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HierarchicalUri"
.end annotation


# static fields
.field static final greylist-max-o TYPE_ID:I = 0x3


# instance fields
.field private final greylist-max-o authority:Landroid/net/Uri$Part;

.field private final greylist-max-o fragment:Landroid/net/Uri$Part;

.field private final greylist-max-o path:Landroid/net/Uri$PathPart;

.field private final greylist-max-o query:Landroid/net/Uri$Part;

.field private final greylist-max-o scheme:Ljava/lang/String;

.field private greylist-max-o ssp:Landroid/net/Uri$Part;

.field private volatile greylist-max-o uriString:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>(Landroid/net/Uri-IA;)V

    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-direct {p0, p3}, Landroid/net/Uri$HierarchicalUri;->generatePath(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-static {p4}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-static {p5}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-void
.end method

.method private greylist-max-o appendSspTo(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private blacklist generatePath(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {p1}, Landroid/net/Uri$PathPart;->makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    sget-object p0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    return-object p0

    :cond_3
    return-object p1
.end method

.method private greylist-max-o getSsp()Landroid/net/Uri$Part;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    :cond_0
    return-object v0
.end method

.method private greylist-max-o makeSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o makeUriString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v1}, Landroid/net/Uri$Part;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 8

    new-instance v0, Landroid/net/Uri$StringUri;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri-IA;)V

    new-instance v2, Landroid/net/Uri$HierarchicalUri;

    invoke-virtual {v0}, Landroid/net/Uri$StringUri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri$StringUri;->-$$Nest$mgetAuthorityPart(Landroid/net/Uri$StringUri;)Landroid/net/Uri$Part;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri$StringUri;->-$$Nest$mgetPathPart(Landroid/net/Uri$StringUri;)Landroid/net/Uri$PathPart;

    move-result-object v5

    invoke-static {v0}, Landroid/net/Uri$StringUri;->-$$Nest$mgetQueryPart(Landroid/net/Uri$StringUri;)Landroid/net/Uri$Part;

    move-result-object v6

    invoke-static {v0}, Landroid/net/Uri$StringUri;->-$$Nest$mgetFragmentPart(Landroid/net/Uri$StringUri;)Landroid/net/Uri$Part;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-object v2
.end method


# virtual methods
.method public whitelist buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getAuthority()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getEncodedAuthority()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getEncodedFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getEncodedPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getEncodedQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getDecoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPathSegments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getPathSegments()Landroid/net/Uri$PathSegments;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSchemeSpecificPart()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist isHierarchical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist isRelative()Z
    .locals 0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeUriString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/net/Uri$HierarchicalUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
