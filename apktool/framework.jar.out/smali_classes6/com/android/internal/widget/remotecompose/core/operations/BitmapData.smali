.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "BitmapData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BitmapData"

.field public static final blacklist ENCODING_FILE:S = 0x2s

.field public static final blacklist ENCODING_INLINE:S = 0x0s

.field public static final blacklist ENCODING_URL:S = 0x1s

.field public static final blacklist MAX_IMAGE_DIMENSION:I = 0x1f40

.field private static final blacklist OP_CODE:I = 0x65

.field public static final blacklist TYPE_PNG:S = 0x1s

.field public static final blacklist TYPE_PNG_8888:S = 0x0s

.field public static final blacklist TYPE_PNG_ALPHA_8:S = 0x4s

.field public static final blacklist TYPE_RAW8:S = 0x2s

.field public static final blacklist TYPE_RAW8888:S = 0x3s


# instance fields
.field blacklist mBitmap:[B

.field blacklist mEncoding:S

.field blacklist mImageHeight:I

.field public final blacklist mImageId:I

.field blacklist mImageWidth:I

.field blacklist mType:S


# direct methods
.method public constructor blacklist <init>(III[B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    shl-int/lit8 p1, p2, 0x10

    or-int/2addr p1, p3

    shl-int/lit8 p2, p4, 0x10

    or-int/2addr p2, p5

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 6

    const/16 v0, 0x65

    const-string v1, "BitmapData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Bitmap data"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id of bitmap data"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const/16 v0, 0x9

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "width of the image"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v1, "width"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v4, "encoding"

    const-string v5, "height of the image"

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v1, "height"

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "length"

    const-string v1, "Array of ints"

    const/16 v2, 0xb

    const-string/jumbo v3, "values"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method private blacklist getEncodingString(S)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "ENCODING_INVALID"

    return-object p0

    :cond_0
    const-string p0, "ENCODING_FILE"

    return-object p0

    :cond_1
    const-string p0, "ENCODING_URL"

    return-object p0

    :cond_2
    const-string p0, "ENCODING_INLINE"

    return-object p0
.end method

.method private blacklist getImageTypeString(S)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "TYPE_INVALID"

    return-object p0

    :cond_0
    const-string p0, "TYPE_PNG_ALPHA_8"

    return-object p0

    :cond_1
    const-string p0, "TYPE_RAW8888"

    return-object p0

    :cond_2
    const-string p0, "TYPE_RAW8"

    return-object p0

    :cond_3
    const-string p0, "TYPE_PNG"

    return-object p0

    :cond_4
    const-string p0, "TYPE_PNG_8888"

    return-object p0
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const v4, 0xffff

    if-le v1, v4, :cond_0

    shr-int/lit8 v5, v1, 0x10

    and-int/2addr v1, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-le v2, v4, :cond_1

    shr-int/lit8 v3, v2, 0x10

    and-int/2addr v2, v4

    :cond_1
    const/4 v4, 0x1

    if-lt v1, v4, :cond_2

    if-lt v2, v4, :cond_2

    const/16 v4, 0x1f40

    if-gt v2, v4, :cond_2

    if-gt v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object p0

    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;-><init>(III[B)V

    int-to-short p0, v5

    iput-short p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    int-to-short p0, v3

    iput-short p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Dimension of image is invalid "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget-short v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    iget-short v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadBitmap(ISSII[B)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    return p0
.end method

.method public blacklist getType()I
    .locals 0

    iget-short p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    return p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    return p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "BitmapData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageWidth"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageHeight"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getImageTypeString(S)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getEncodingString(S)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encoding"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitmapData id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BITMAP DATA "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;)V
    .locals 1

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    iget-short v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iput-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iget-short p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    iput-short p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    return-void
.end method
