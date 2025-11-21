.class public final Landroid/content/UriRelativeFilter;
.super Ljava/lang/Object;
.source "UriRelativeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UriRelativeFilter$UriPart;
    }
.end annotation


# static fields
.field private static final blacklist FILTER_STR:Ljava/lang/String; = "filter"

.field public static final whitelist FRAGMENT:I = 0x2

.field private static final blacklist PART_STR:Ljava/lang/String; = "part"

.field public static final whitelist PATH:I = 0x0

.field private static final blacklist PATTERN_STR:Ljava/lang/String; = "pattern"

.field public static final whitelist QUERY:I = 0x1

.field static final blacklist URI_RELATIVE_FILTER_STR:Ljava/lang/String; = "uriRelativeFilter"


# instance fields
.field private final blacklist mFilter:Ljava/lang/String;

.field private final blacklist mPatternType:I

.field private final blacklist mUriPart:I


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    const-class v0, Landroid/content/UriRelativeFilter$UriPart;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    const-class p1, Landroid/os/PatternMatcher$PatternType;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p3, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/UriRelativeFilterParcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/UriRelativeFilterParcel;->uriPart:I

    iput v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    iget v0, p1, Landroid/content/UriRelativeFilterParcel;->patternType:I

    iput v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    iget-object p1, p1, Landroid/content/UriRelativeFilterParcel;->filter:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "part"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    const-string/jumbo v0, "pattern"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    const-string v0, "filter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    return-void
.end method

.method private blacklist matchQuery(Landroid/os/PatternMatcher;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    move p2, p0

    :goto_0
    array-length v1, v0

    if-ge p2, v1, :cond_2

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private blacklist patternTypeToString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SUFFIX"

    return-object p0

    :cond_1
    const-string p0, "ADVANCED_GLOB"

    return-object p0

    :cond_2
    const-string p0, "GLOB"

    return-object p0

    :cond_3
    const-string p0, "PREFIX"

    return-object p0

    :cond_4
    const-string p0, "LITERAL"

    return-object p0
.end method

.method private blacklist uriPartToString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "FRAGMENT"

    return-object p0

    :cond_1
    const-string p0, "QUERY"

    return-object p0

    :cond_2
    const-string p0, "PATH"

    return-object p0
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/content/UriRelativeFilter;

    iget v2, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    iget v3, p1, Landroid/content/UriRelativeFilter;->mUriPart:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    iget v3, p1, Landroid/content/UriRelativeFilter;->mPatternType:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPatternType()I
    .locals 0

    iget p0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    return p0
.end method

.method public whitelist getUriPart()I
    .locals 0

    iget p0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist matchData(Landroid/net/Uri;)Z
    .locals 3

    new-instance v0, Landroid/os/PatternMatcher;

    iget-object v1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/UriRelativeFilter;->getUriPart()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p0, 0x2

    if-eq v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/content/UriRelativeFilter;->matchQuery(Landroid/os/PatternMatcher;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist toParcel()Landroid/content/UriRelativeFilterParcel;
    .locals 2

    new-instance v0, Landroid/content/UriRelativeFilterParcel;

    invoke-direct {v0}, Landroid/content/UriRelativeFilterParcel;-><init>()V

    iget v1, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    iput v1, v0, Landroid/content/UriRelativeFilterParcel;->uriPart:I

    iget v1, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    iput v1, v0, Landroid/content/UriRelativeFilterParcel;->patternType:I

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    iput-object p0, v0, Landroid/content/UriRelativeFilterParcel;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UriRelativeFilter { uriPart = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/UriRelativeFilter;->uriPartToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", patternType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/content/UriRelativeFilter;->patternTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "uriRelativeFilter"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pattern"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "part"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "filter"

    iget-object p0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-interface {p1, v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
