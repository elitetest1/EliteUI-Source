.class public Lcom/samsung/android/media/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final blacklist PRT:I = 0x2

.field static final blacklist TAG:I = 0x0

.field static final blacklist VALUE:I = 0x1


# instance fields
.field public blacklist crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

.field private blacklist db:Ljavax/xml/parsers/DocumentBuilder;

.field private blacklist dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private blacklist doc:Lorg/w3c/dom/Document;

.field public blacklist exif:Lcom/samsung/android/media/SemQuramDngJavaExif;

.field public blacklist exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

.field private blacklist is:Lorg/xml/sax/InputSource;

.field public blacklist root:Lorg/w3c/dom/Node;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->db:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->is:Lorg/xml/sax/InputSource;

    new-instance v0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-direct {v0}, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    new-instance v0, Lcom/samsung/android/media/SemQuramDngJavaExif;

    invoke-direct {v0}, Lcom/samsung/android/media/SemQuramDngJavaExif;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->exif:Lcom/samsung/android/media/SemQuramDngJavaExif;

    new-instance v0, Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-direct {v0}, Lcom/samsung/android/media/SemQuramDngJavaCRS;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->doc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/samsung/android/media/XMLParser;->root:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public blacklist getAllDesc(Lorg/w3c/dom/Node;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v0

    const-string/jumbo v4, "tiff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "rdf:Seq"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_6

    aget-object v3, v1, v0

    const-string v7, "dc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    aget-object v3, v1, v0

    const-string/jumbo v7, "xmp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    aget-object v3, v1, v0

    const-string v7, "exif"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v1, v1, v0

    const-string v3, "crs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    new-array v1, v6, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-le v3, v2, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    if-eqz v5, :cond_a

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/media/XMLParser;->setDataArrayToCrs(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/XMLParser;->getSeqFromNode(Lorg/w3c/dom/Node;)[Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/XMLParser;->setDataToCrs([Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/XMLParser;->getAllDesc(Lorg/w3c/dom/Node;)Z

    goto :goto_4

    :cond_6
    :goto_2
    new-array v1, v6, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-le v3, v2, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_7

    if-eqz v5, :cond_a

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/media/XMLParser;->setDataArrayToExif(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/XMLParser;->getSeqFromNode(Lorg/w3c/dom/Node;)[Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/XMLParser;->setDataToExif([Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    return v2
.end method

.method public blacklist getChildDesc(Lorg/w3c/dom/Node;)[[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/XMLParser;->getNumberOfChild(Lorg/w3c/dom/Node;)I

    move-result p0

    if-eqz p0, :cond_2

    new-array v1, p0, [Ljava/lang/String;

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    move-object p0, v0

    :goto_1
    filled-new-array {v0, p0}, [[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getChildDescByTagName(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/XMLParser;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/XMLParser;->getNumberOfChild(Lorg/w3c/dom/Node;)I

    move-result p0

    if-eqz p0, :cond_2

    new-array v2, p0, [Ljava/lang/String;

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    move-object p0, v0

    :goto_1
    filled-new-array {v0, p0}, [[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDom(Ljava/io/ByteArrayInputStream;)Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/XMLParser;->is:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->db:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v0, p0, Lcom/samsung/android/media/XMLParser;->is:Lorg/xml/sax/InputSource;

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/media/XMLParser;->doc:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->doc:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public blacklist getNumberOfChild(Lorg/w3c/dom/Node;)I
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist getSeqFromNode(Lorg/w3c/dom/Node;)[Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rdf:li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public blacklist setDataArrayToCrs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    array-length v1, p2

    new-array v1, v1, [Lcom/samsung/android/media/SemQuramDngJavaPoint;

    iput-object v1, v0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mToneCurve:[Lcom/samsung/android/media/SemQuramDngJavaPoint;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iget-object v2, v2, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mToneCurve:[Lcom/samsung/android/media/SemQuramDngJavaPoint;

    new-instance v3, Lcom/samsung/android/media/SemQuramDngJavaPoint;

    invoke-direct {v3}, Lcom/samsung/android/media/SemQuramDngJavaPoint;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object p1, p1, v1

    const-string v2, "ToneCurve"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, p2

    move v2, v0

    move v3, v2

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v4, p2, v2

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iget-object v5, v5, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mToneCurve:[Lcom/samsung/android/media/SemQuramDngJavaPoint;

    aget-object v5, v5, v3

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/media/SemQuramDngJavaPoint;->x:I

    iget-object v5, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iget-object v5, v5, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mToneCurve:[Lcom/samsung/android/media/SemQuramDngJavaPoint;

    aget-object v5, v5, v3

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcom/samsung/android/media/SemQuramDngJavaPoint;->y:I

    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist setDataArrayToExif(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "exif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    aget-object v2, p1, v1

    const-string v3, "ISOSpeedRatings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v2, p2

    if-lt v2, v1, :cond_0

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v3

    :goto_0
    iput-wide v7, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mISOSpeedRatings0:J

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v6, :cond_1

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide v7, v3

    :goto_1
    iput-wide v7, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mISOSpeedRatings1:J

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length p1, p2

    if-lt p1, v5, :cond_2

    aget-object p1, p2, v6

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_2
    iput-wide v3, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mISOSpeedRatings2:J

    return v1

    :cond_3
    aget-object v2, p1, v1

    const-string v7, "SubjectArea"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v2, p2

    if-lt v2, v1, :cond_4

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    :cond_4
    move-wide v7, v3

    :goto_2
    iput-wide v7, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSubjectArea0:J

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v6, :cond_5

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_3

    :cond_5
    move-wide v7, v3

    :goto_3
    iput-wide v7, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSubjectArea1:J

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v5, :cond_6

    aget-object v0, p2, v6

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_4

    :cond_6
    move-wide v6, v3

    :goto_4
    iput-wide v6, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSubjectArea2:J

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length p1, p2

    const/4 v0, 0x4

    if-lt p1, v0, :cond_7

    aget-object p1, p2, v5

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_7
    iput-wide v3, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSubjectArea3:J

    return v1

    :cond_8
    aget-object v2, p1, v1

    const-string v3, "CFAPattern"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    array-length p1, p2

    :goto_5
    if-ge v0, p1, :cond_9

    iget-object v2, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iget-object v2, v2, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mCFAPattern:[B

    aget-object v3, p2, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    return v1

    :cond_a
    aget-object v2, p1, v1

    const-string v3, "GPSLatitude"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v2, p2

    if-lt v2, v1, :cond_b

    aget-object v0, p2, v0

    goto :goto_6

    :cond_b
    move-object v0, v3

    :goto_6
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLatitude0:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v6, :cond_c

    aget-object v0, p2, v1

    goto :goto_7

    :cond_c
    move-object v0, v3

    :goto_7
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLatitude1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length p1, p2

    if-lt p1, v5, :cond_d

    aget-object v3, p2, v6

    :cond_d
    iput-object v3, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLatitude2:Ljava/lang/String;

    return v1

    :cond_e
    aget-object v2, p1, v1

    const-string v4, "GPSLongitude"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v2, p2

    if-lt v2, v1, :cond_f

    aget-object v0, p2, v0

    goto :goto_8

    :cond_f
    move-object v0, v3

    :goto_8
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLongitude0:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v6, :cond_10

    aget-object v0, p2, v1

    goto :goto_9

    :cond_10
    move-object v0, v3

    :goto_9
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLongitude1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length p1, p2

    if-lt p1, v5, :cond_11

    aget-object v3, p2, v6

    :cond_11
    iput-object v3, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLongitude2:Ljava/lang/String;

    return v1

    :cond_12
    aget-object v2, p1, v1

    const-string v4, "GPSTimeStamp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v2, p2

    if-lt v2, v1, :cond_13

    aget-object v0, p2, v0

    goto :goto_a

    :cond_13
    move-object v0, v3

    :goto_a
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSTimeStamp0:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v6, :cond_14

    aget-object v0, p2, v1

    goto :goto_b

    :cond_14
    move-object v0, v3

    :goto_b
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSTimeStamp1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length p1, p2

    if-lt p1, v5, :cond_15

    aget-object v3, p2, v6

    :cond_15
    iput-object v3, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSTimeStamp2:Ljava/lang/String;

    return v1

    :cond_16
    aget-object v2, p1, v1

    const-string v4, "GPSDestLatitude"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v2, p2

    if-lt v2, v1, :cond_17

    aget-object v0, p2, v0

    goto :goto_c

    :cond_17
    move-object v0, v3

    :goto_c
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLatitude0:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v6, :cond_18

    aget-object v0, p2, v1

    goto :goto_d

    :cond_18
    move-object v0, v3

    :goto_d
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLatitude1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length p1, p2

    if-lt p1, v5, :cond_19

    aget-object v3, p2, v6

    :cond_19
    iput-object v3, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLatitude2:Ljava/lang/String;

    return v1

    :cond_1a
    aget-object p1, p1, v1

    const-string v2, "GPSDestLongitude"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v2, p2

    if-lt v2, v1, :cond_1b

    aget-object v0, p2, v0

    goto :goto_e

    :cond_1b
    move-object v0, v3

    :goto_e
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLongitude0:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length v0, p2

    if-lt v0, v6, :cond_1c

    aget-object v0, p2, v1

    goto :goto_f

    :cond_1c
    move-object v0, v3

    :goto_f
    iput-object v0, p1, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLongitude1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    array-length p1, p2

    if-lt p1, v5, :cond_1d

    aget-object v3, p2, v6

    :cond_1d
    iput-object v3, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLongitude2:Ljava/lang/String;

    :cond_1e
    return v1

    :cond_1f
    return v0
.end method

.method public blacklist setDataToCrs([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    aget-object v0, v1, v2

    const-string v3, "AutoBrightness"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    aget-object v0, v1, v2

    const-string v3, "AutoContrast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    aget-object v0, v1, v2

    const-string v3, "AutoExposure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    aget-object v0, v1, v2

    const-string v3, "AutoShadows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    aget-object v0, v1, v2

    const-string v3, "HasCrop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    aget-object v0, v1, v2

    const-string v3, "HasSettings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    aget-object v0, v1, v2

    const-string v3, "ChromaticAberrationB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    aget-object v0, v1, v2

    const-string v3, "ChromaticAberrationR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    aget-object v0, v1, v2

    const-string v3, "ColorNoiseReduction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    aget-object v0, v1, v2

    const-string v3, "Contrast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    aget-object v0, v1, v2

    const-string v3, "CropUnits"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    aget-object v0, v1, v2

    const-string v3, "GreenHue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    aget-object v0, v1, v2

    const-string v3, "GreenSaturation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    aget-object v0, v1, v2

    const-string v3, "LuminanceSmoothing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    aget-object v0, v1, v2

    const-string v3, "RedHue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    aget-object v0, v1, v2

    const-string v3, "RedSaturation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    aget-object v0, v1, v2

    const-string v3, "Saturation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    aget-object v0, v1, v2

    const-string v3, "Shadows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    aget-object v0, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    aget-object v0, v1, v2

    const-string v3, "Sharpness"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    aget-object v0, v1, v2

    const-string v3, "Temperature"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    aget-object v0, v1, v2

    const-string v3, "Tint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    aget-object v0, v1, v2

    const-string v3, "VignetteAmount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    aget-object v0, v1, v2

    const-string v3, "VignetteMidpoint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    aget-object v0, v1, v2

    const-string v3, "CropTop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    aget-object v0, v1, v2

    const-string v3, "CropLeft"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    aget-object v0, v1, v2

    const-string v3, "CropBottom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    aget-object v0, v1, v2

    const-string v3, "CropRight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    aget-object v0, v1, v2

    const-string v3, "CropAngle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    aget-object v0, v1, v2

    const-string v3, "CropWidth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    aget-object v0, v1, v2

    const-string v3, "CropHeight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    aget-object v0, v1, v2

    const-string v3, "Exposure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v1, v2

    const-string v3, "CameraProfile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, v1, v2

    const-string v3, "RawFileName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, v1, v2

    const-string v3, "ToneCurveName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, v1, v2

    const-string v3, "Version"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, v1, v2

    const-string v1, "WhiteBalance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mWhiteBalance:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mVersion:Ljava/lang/String;

    return-void

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mToneCurveName:Ljava/lang/String;

    return-void

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mRawFileName:Ljava/lang/String;

    return-void

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCameraProfile:Ljava/lang/String;

    return-void

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mExposure:D

    return-void

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropHeight:D

    return-void

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropWidth:D

    return-void

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropAngle:D

    return-void

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropRight:D

    return-void

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropBottom:D

    return-void

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropLeft:D

    return-void

    :cond_d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropTop:D

    return-void

    :cond_e
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mVignetteMidpoint:I

    return-void

    :cond_f
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mVignetteAmount:I

    return-void

    :cond_10
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mTint:I

    return-void

    :cond_11
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mTemperature:I

    return-void

    :cond_12
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mSharpness:I

    return-void

    :cond_13
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mShadows:I

    return-void

    :cond_14
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mShadows:I

    return-void

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mSaturation:I

    return-void

    :cond_16
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mRedSaturation:I

    return-void

    :cond_17
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mRedHue:I

    return-void

    :cond_18
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mLuminanceSmoothing:I

    return-void

    :cond_19
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mGreenSaturation:I

    return-void

    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mGreenHue:I

    return-void

    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mCropUnits:I

    return-void

    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mContrast:I

    return-void

    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mColorNoiseReduction:I

    return-void

    :cond_1e
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mChromaticAberrationR:I

    return-void

    :cond_1f
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mChromaticAberrationB:I

    return-void

    :cond_20
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mHasSettings:Z

    return-void

    :cond_21
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mHasCrop:Z

    return-void

    :cond_22
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mAutoShadows:Z

    return-void

    :cond_23
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mAutoExposure:Z

    return-void

    :cond_24
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mAutoContrast:Z

    return-void

    :cond_25
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->crs:Lcom/samsung/android/media/SemQuramDngJavaCRS;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/media/SemQuramDngJavaCRS;->mAutoBrightness:Z

    return-void
.end method

.method public blacklist setDataToExif([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    aget-object v3, v1, v0

    const-string/jumbo v4, "tiff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    aget-object v0, v1, v2

    const-string v3, "Make"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, v1, v2

    const-string v1, "Model"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mModel:Ljava/lang/String;

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mMake:Ljava/lang/String;

    return-void

    :cond_2
    aget-object v3, v1, v0

    const-string v4, "dc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CreatorTool"

    if-nez v3, :cond_5

    aget-object v0, v1, v2

    const-string v3, "description"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, v1, v2

    const-string/jumbo v1, "rights"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mCopyright:Ljava/lang/String;

    return-void

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mArtist:Ljava/lang/String;

    return-void

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mImageDescription:Ljava/lang/String;

    return-void

    :cond_5
    aget-object v3, v1, v0

    const-string/jumbo v5, "xmp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    aget-object v0, v1, v2

    const-string v3, "ModifyDate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    aget-object v0, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v1, v2

    const-string v1, "CreateDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mDateTimeDigitized:Ljava/lang/String;

    return-void

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSoftware:Ljava/lang/String;

    return-void

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mDateTime:Ljava/lang/String;

    return-void

    :cond_8
    aget-object v3, v1, v0

    const-string v4, "exif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5b

    aget-object v3, v1, v2

    const-string v4, "ExifVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    aget-object v3, v1, v2

    const-string v4, "FlashPixVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    aget-object v3, v1, v2

    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    aget-object v3, v1, v2

    const-string v4, "Gamma"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    aget-object v3, v1, v2

    const-string v4, "ComponentsConfiguration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    aget-object v3, v1, v2

    const-string v4, "PixelXDimension"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    aget-object v3, v1, v2

    const-string v4, "PixelYDimension"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    aget-object v3, v1, v2

    const-string v4, "UserComment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    aget-object v3, v1, v2

    const-string v4, "DateTimeOriginal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    aget-object v3, v1, v2

    const-string v4, "ExposureTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    aget-object v3, v1, v2

    const-string v4, "FNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    aget-object v3, v1, v2

    const-string v4, "ExposureProgram"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    aget-object v3, v1, v2

    const-string v4, "SensitivityType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    aget-object v3, v1, v2

    const-string v4, "StandardOutputSensitivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    aget-object v3, v1, v2

    const-string v4, "RecommendedExposureIndex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    aget-object v3, v1, v2

    const-string v4, "ISOSpeed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    aget-object v3, v1, v2

    const-string v4, "ISOSpeedLatitudeyyy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    aget-object v3, v1, v2

    const-string v4, "ISOSpeedLatitudezzz"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    aget-object v3, v1, v2

    const-string v4, "ShutterSpeedValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    aget-object v3, v1, v2

    const-string v4, "ApertureValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    aget-object v3, v1, v2

    const-string v4, "BrightnessValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    aget-object v3, v1, v2

    const-string v4, "ExposureBiasValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    aget-object v3, v1, v2

    const-string v4, "MaxApertureValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    aget-object v3, v1, v2

    const-string v4, "SubjectDistance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    aget-object v3, v1, v2

    const-string v4, "MeteringMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    aget-object v3, v1, v2

    const-string v4, "LightSource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    aget-object v3, v1, v2

    const-string v4, "Flash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    aget-object v3, v1, v2

    const-string v4, "FocalLength"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    aget-object v3, v1, v2

    const-string v4, "FocalPlaneXResolution"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    aget-object v3, v1, v2

    const-string v4, "FocalPlaneYResolution"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    aget-object v3, v1, v2

    const-string v4, "FocalPlaneResolutionUnit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    aget-object v3, v1, v2

    const-string v4, "ExposureIndex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    aget-object v3, v1, v2

    const-string v4, "SensingMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    aget-object v3, v1, v2

    const-string v4, "FileSource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    aget-object v3, v1, v2

    const-string v4, "SceneType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    aget-object v3, v1, v2

    const-string v4, "CustomRendered"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    aget-object v3, v1, v2

    const-string v4, "ExposureMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    aget-object v3, v1, v2

    const-string v4, "WhiteBalance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    aget-object v3, v1, v2

    const-string v4, "DigitalZoomRatio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    aget-object v3, v1, v2

    const-string v4, "FocalLengthIn35mmFilm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    aget-object v3, v1, v2

    const-string v4, "SceneCaptureType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    aget-object v3, v1, v2

    const-string v4, "GainControl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    aget-object v3, v1, v2

    const-string v4, "Contrast"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    aget-object v3, v1, v2

    const-string v4, "Saturation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    aget-object v3, v1, v2

    const-string v4, "Sharpness"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    aget-object v3, v1, v2

    const-string v4, "SubjectDistanceRange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    aget-object v3, v1, v2

    const-string v4, "LensMake"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    aget-object v3, v1, v2

    const-string v4, "LensSerialNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    aget-object v3, v1, v2

    const-string v4, "GPSVersionID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    aget-object v3, v1, v2

    const-string v4, "GPSLatitudeRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    aget-object v3, v1, v2

    const-string v4, "GPSLongitudeRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    aget-object v3, v1, v2

    const-string v4, "GPSAltitudeRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    aget-object v3, v1, v2

    const-string v4, "GPSAltitude"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    aget-object v3, v1, v2

    const-string v4, "GPSSatellites"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    aget-object v3, v1, v2

    const-string v4, "GPSStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    aget-object v3, v1, v2

    const-string v4, "GPSMeasureMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    aget-object v3, v1, v2

    const-string v4, "GPSDOP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    aget-object v3, v1, v2

    const-string v4, "GPSSpeedRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    aget-object v3, v1, v2

    const-string v4, "GPSSpeed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    aget-object v3, v1, v2

    const-string v4, "GPSTrackRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    aget-object v3, v1, v2

    const-string v4, "GPSTrack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    aget-object v3, v1, v2

    const-string v4, "GPSImgDirectionRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    aget-object v3, v1, v2

    const-string v4, "GPSImgDirection"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    aget-object v3, v1, v2

    const-string v4, "GPSMapDatum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    aget-object v3, v1, v2

    const-string v4, "GPSDestLatitudeRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    aget-object v3, v1, v2

    const-string v4, "GPSDestLongitudeRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    aget-object v3, v1, v2

    const-string v4, "GPSDestBearingRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    aget-object v3, v1, v2

    const-string v4, "GPSDestBearing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    aget-object v3, v1, v2

    const-string v4, "GPSDestDistanceRef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    aget-object v3, v1, v2

    const-string v4, "GPSDestDistance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    aget-object v3, v1, v2

    const-string v4, "GPSProcessingMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    aget-object v3, v1, v2

    const-string v4, "GPSAreaInformation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    aget-object v3, v1, v2

    const-string v4, "GPSDateStamp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    aget-object v3, v1, v2

    const-string v4, "GPSDifferential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    aget-object v3, v1, v2

    const-string v4, "GPSHPositioningError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    aget-object v3, v1, v2

    const-string v4, "InteroperabilityIndex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    aget-object v3, v1, v2

    const-string v4, "Columns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    aget-object v3, v1, v2

    const-string v4, "Rows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    aget-object v3, v1, v2

    const-string v4, "ImageUniqueID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    mul-int/lit8 v3, v0, 0x2

    aget-byte v1, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    add-int/2addr v3, v2

    aget-byte v3, v4, v3

    const/16 v4, 0x46

    const/16 v5, 0x41

    if-lt v1, v5, :cond_9

    if-gt v1, v4, :cond_9

    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v1, -0x30

    :goto_1
    int-to-byte v1, v1

    if-lt v3, v5, :cond_a

    if-gt v3, v4, :cond_a

    add-int/lit8 v3, v3, -0x37

    goto :goto_2

    :cond_a
    add-int/lit8 v3, v3, -0x30

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iget-object v4, v4, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mImageUniqueID:[B

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v3, v3

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-boolean v2, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mImageUniqueIDExist:Z

    return-void

    :cond_c
    aget-object v0, v1, v2

    const-string v1, "DateTimeDigitized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mDateTimeDigitized:Ljava/lang/String;

    return-void

    :cond_d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mCFARepeatPatternRows:J

    return-void

    :cond_e
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mCFARepeatPatternRows:J

    return-void

    :cond_f
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mInteroperabilityIndex:Ljava/lang/String;

    return-void

    :cond_10
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSHPositioningError:Ljava/lang/String;

    return-void

    :cond_11
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDifferential:J

    return-void

    :cond_12
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDateStamp:Ljava/lang/String;

    return-void

    :cond_13
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSAreaInformation:Ljava/lang/String;

    return-void

    :cond_14
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSProcessingMethod:Ljava/lang/String;

    return-void

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestDistance:Ljava/lang/String;

    return-void

    :cond_16
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestDistanceRef:Ljava/lang/String;

    return-void

    :cond_17
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestBearing:Ljava/lang/String;

    return-void

    :cond_18
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestBearingRef:Ljava/lang/String;

    return-void

    :cond_19
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLongitudeRef:Ljava/lang/String;

    return-void

    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDestLatitudeRef:Ljava/lang/String;

    return-void

    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSMapDatum:Ljava/lang/String;

    return-void

    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSImgDirection:Ljava/lang/String;

    return-void

    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSImgDirectionRef:Ljava/lang/String;

    return-void

    :cond_1e
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSTrack:Ljava/lang/String;

    return-void

    :cond_1f
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSTrackRef:Ljava/lang/String;

    return-void

    :cond_20
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSSpeed:Ljava/lang/String;

    return-void

    :cond_21
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSSpeedRef:Ljava/lang/String;

    return-void

    :cond_22
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSDOP:Ljava/lang/String;

    return-void

    :cond_23
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSMeasureMode:Ljava/lang/String;

    return-void

    :cond_24
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSStatus:Ljava/lang/String;

    return-void

    :cond_25
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSSatellites:Ljava/lang/String;

    return-void

    :cond_26
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSAltitude:Ljava/lang/String;

    return-void

    :cond_27
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSAltitudeRef:J

    return-void

    :cond_28
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLongitudeRef:Ljava/lang/String;

    return-void

    :cond_29
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSLatitudeRef:Ljava/lang/String;

    return-void

    :cond_2a
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGPSVersionID:J

    return-void

    :cond_2b
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mLensSerialNumber:Ljava/lang/String;

    return-void

    :cond_2c
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mLensMake:Ljava/lang/String;

    return-void

    :cond_2d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSubjectDistanceRange:J

    return-void

    :cond_2e
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSharpness:J

    return-void

    :cond_2f
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSaturation:J

    return-void

    :cond_30
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mContrast:J

    return-void

    :cond_31
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGainControl:J

    return-void

    :cond_32
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSceneCaptureType:J

    return-void

    :cond_33
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFocalLengthIn35mmFilm:J

    return-void

    :cond_34
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mDigitalZoomRatio:Ljava/lang/String;

    return-void

    :cond_35
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mWhiteBalance:J

    return-void

    :cond_36
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mExposureMode:J

    return-void

    :cond_37
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mCustomRendered:J

    return-void

    :cond_38
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSceneType:J

    return-void

    :cond_39
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFileSource:J

    return-void

    :cond_3a
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSensingMethod:J

    return-void

    :cond_3b
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mExposureIndex:Ljava/lang/String;

    return-void

    :cond_3c
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFocalPlaneResolutionUnit:J

    return-void

    :cond_3d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFocalPlaneYResolution:Ljava/lang/String;

    return-void

    :cond_3e
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFocalPlaneXResolution:Ljava/lang/String;

    return-void

    :cond_3f
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFocalLength:Ljava/lang/String;

    return-void

    :cond_40
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFlash:J

    return-void

    :cond_41
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mLightSource:J

    return-void

    :cond_42
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mMeteringMode:J

    return-void

    :cond_43
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSubjectDistance:Ljava/lang/String;

    return-void

    :cond_44
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mMaxApertureValue:Ljava/lang/String;

    return-void

    :cond_45
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mExposureBiasValue:Ljava/lang/String;

    return-void

    :cond_46
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mBrightnessValue:Ljava/lang/String;

    return-void

    :cond_47
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mApertureValue:Ljava/lang/String;

    return-void

    :cond_48
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mShutterSpeedValue:Ljava/lang/String;

    return-void

    :cond_49
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mISOSpeedLatitudezzz:J

    return-void

    :cond_4a
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mISOSpeedLatitudeyyy:J

    return-void

    :cond_4b
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mISOSpeed:J

    return-void

    :cond_4c
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mRecommendedExposureIndex:J

    return-void

    :cond_4d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mStandardOutputSensitivity:J

    return-void

    :cond_4e
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mSensitivityType:J

    return-void

    :cond_4f
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mExposureProgram:J

    return-void

    :cond_50
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFNumber:Ljava/lang/String;

    return-void

    :cond_51
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mExposureTime:Ljava/lang/String;

    return-void

    :cond_52
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mDateTimeOriginal:Ljava/lang/String;

    return-void

    :cond_53
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mUserComment:Ljava/lang/String;

    return-void

    :cond_54
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mPixelYDimension:J

    return-void

    :cond_55
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mPixelXDimension:J

    return-void

    :cond_56
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mComponentsConfiguration:J

    return-void

    :cond_57
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mGamma:Ljava/lang/String;

    return-void

    :cond_58
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mColorSpace:J

    return-void

    :cond_59
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mFlashPixVersion:J

    return-void

    :cond_5a
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mExifVersion:J

    return-void

    :cond_5b
    aget-object v0, v1, v0

    const-string v3, "exifEX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    aget-object v0, v1, v2

    const-string v3, "CameraOwnerName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    aget-object v0, v1, v2

    const-string v3, "BodySerialNumber"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    aget-object v0, v1, v2

    const-string v1, "LensModel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mLensName:Ljava/lang/String;

    return-void

    :cond_5c
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mCameraSerialNumber:Ljava/lang/String;

    return-void

    :cond_5d
    iget-object p0, p0, Lcom/samsung/android/media/XMLParser;->exif_primitive:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;->mOwnerName:Ljava/lang/String;

    :cond_5e
    return-void
.end method

.method public blacklist setRootNode(Lorg/w3c/dom/Document;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "*"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/media/XMLParser;->root:Lorg/w3c/dom/Node;

    return-void
.end method
