.class Landroid/util/jar/StrictJarManifestReader;
.super Ljava/lang/Object;
.source "StrictJarManifestReader.java"


# instance fields
.field private final blacklist attributeNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist buf:[B

.field private blacklist consecutiveLineBreaks:I

.field private final blacklist endOfMainSection:I

.field private blacklist name:Ljava/util/jar/Attributes$Name;

.field private blacklist pos:I

.field private blacklist value:Ljava/lang/String;

.field private final blacklist valueBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>([BLjava/util/jar/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    iput-object p1, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    :goto_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iput p1, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return-void
.end method

.method private blacklist readHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readName()V

    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readValue()V

    iget p0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lez p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private blacklist readName()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :goto_0
    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v1, v2, v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v0, v0, v2

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object p0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid value for attribute \'%s\'"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private blacklist readValue()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    move v3, v1

    :goto_1
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v5, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v6, v5

    if-ge v4, v6, :cond_7

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v7, v5, v4

    if-eqz v7, :cond_6

    const/16 v8, 0xa

    const/4 v9, 0x1

    if-eq v7, v8, :cond_4

    const/16 v8, 0xd

    if-eq v7, v8, :cond_3

    const/16 v8, 0x20

    if-eq v7, v8, :cond_0

    goto :goto_2

    :cond_0
    iget v7, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-ne v7, v9, :cond_1

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    sub-int v6, v2, v0

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_1

    :cond_1
    :goto_2
    iget v7, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lt v7, v9, :cond_2

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    goto :goto_3

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/2addr v3, v9

    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    move v3, v9

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/2addr v4, v9

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "NUL character in a manifest"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    sub-int/2addr v2, v0

    invoke-virtual {v1, v5, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getEndOfMainSection()I
    .locals 0

    iget p0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return p0
.end method

.method public blacklist readEntries(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :goto_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/util/jar/StrictJarManifest;->ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/jar/Attributes;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/util/jar/StrictJarManifest$Chunk;

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    invoke-direct {v3, v0, v4}, Landroid/util/jar/StrictJarManifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Entry is not named"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method
