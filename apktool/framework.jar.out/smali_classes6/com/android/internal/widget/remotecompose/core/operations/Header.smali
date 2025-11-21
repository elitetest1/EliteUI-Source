.class public Lcom/android/internal/widget/remotecompose/core/operations/Header;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "Header.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "Header"

.field private static final blacklist DATA_TYPE_FLOAT:S = 0x1s

.field private static final blacklist DATA_TYPE_INT:S = 0x0s

.field private static final blacklist DATA_TYPE_LONG:S = 0x2s

.field private static final blacklist DATA_TYPE_STRING:S = 0x3s

.field public static final blacklist DOC_CONTENT_DESCRIPTION:S = 0x9s

.field public static final blacklist DOC_DATA_UPDATE:S = 0xcs

.field public static final blacklist DOC_DENSITY_AT_GENERATION:S = 0x7s

.field public static final blacklist DOC_DESIRED_FPS:S = 0x8s

.field public static final blacklist DOC_HEIGHT:S = 0x6s

.field public static final blacklist DOC_SOURCE:S = 0xbs

.field public static final blacklist DOC_WIDTH:S = 0x5s

.field private static final blacklist KEYS:[S

.field private static final blacklist KEY_NAMES:[Ljava/lang/String;

.field private static final blacklist MAGIC_NUMBER:I = 0x48c0000

.field private static final blacklist OP_CODE:I


# instance fields
.field blacklist mCapabilities:J

.field blacklist mDensity:F

.field blacklist mHeight:I

.field blacklist mMajorVersion:I

.field blacklist mMinorVersion:I

.field blacklist mPatchVersion:I

.field private blacklist mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    const-string v5, "DOC_CONTENT_DESCRIPTION"

    const-string v6, "DOC_SOURCE"

    const-string v1, "DOC_WIDTH"

    const-string v2, "DOC_HEIGHT"

    const-string v3, "DOC_DENSITY_AT_GENERATION"

    const-string v4, "DOC_DESIRED_FPS"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xbs
        0xcs
    .end array-data
.end method

.method public constructor blacklist <init>(IIIIIFJ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    iput-wide p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    return-void
.end method

.method public constructor blacklist <init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 p1, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    const/4 p1, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    :cond_0
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V
    .locals 1

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    const v1, 0x48c0001

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const-string v0, "Header"

    const-string v1, "Protocol Operations"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Document metadata, containing the version, original size & density, capabilities mask"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "MAJOR_VERSION"

    const-string v1, "Major version"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "MINOR_VERSION"

    const-string v3, "Minor version"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "PATCH_VERSION"

    const-string v3, "Patch version"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "WIDTH"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "HEIGHT"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const/16 v0, 0x8

    const-string v2, "CAPABILITIES"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method private blacklist getFloat(IF)F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method private blacklist getInt(II)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method private blacklist getLong(IJ)J
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p2
.end method

.method private blacklist getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public static blacklist id()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "Header"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 9
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

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v7

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    new-array v4, v1, [S

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    aget-short v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static blacklist readDirect(Ljava/io/InputStream;)Lcom/android/internal/widget/remotecompose/core/operations/Header;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " != 76283904"

    const-string v1, " != 0"

    const-string v2, "Invalid header MAGIC_NUMBER "

    const-string v3, "Invalid header "

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const/high16 p0, 0x10000

    if-ge v6, p0, :cond_0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    return-object v5

    :cond_0
    const/high16 p0, -0x10000

    and-int/2addr p0, v6

    const/high16 v1, 0x48c0000

    if-ne p0, v1, :cond_2

    const p0, 0xffff

    and-int/2addr p0, v6

    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [S

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    aget-short v6, v1, v5

    aget-object v9, v2, v5

    invoke-virtual {v3, v6, v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v0, p0, v7, v8, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    return-object v0

    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    throw p0
.end method

.method private static blacklist readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    shr-int/lit8 v2, v1, 0xa

    and-int/lit8 v1, v1, 0x3f

    int-to-short v1, v1

    aput-short v1, p1, v0

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static blacklist readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    shr-int/lit8 v2, v1, 0xa

    and-int/lit8 v1, v1, 0x3f

    int-to-short v1, v1

    aput-short v1, p1, v0

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v2, p2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static blacklist writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-short v1, p1, v0

    aget-object v2, p2, v0

    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    or-int/lit16 v1, v1, 0xc00

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    goto :goto_1

    :cond_2
    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 9

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get(S)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setUpdateDoc(Z)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v1, "HEADER v"

    const-string v2, "."

    if-eqz v0, :cond_2

    const-string v0, ""

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    array-length v5, v4

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    aget-short v4, v4, v3

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    return-void
.end method
