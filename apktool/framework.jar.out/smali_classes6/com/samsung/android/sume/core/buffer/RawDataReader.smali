.class public Lcom/samsung/android/sume/core/buffer/RawDataReader;
.super Ljava/lang/Object;
.source "RawDataReader.java"

# interfaces
.implements Lcom/samsung/android/sume/core/buffer/MediaBufferReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/buffer/MediaBufferReader<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist pixelRead:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist pixelReadByIndex:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/buffer/RawDataReader;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/RawDataReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/buffer/RawDataReader;Lcom/samsung/android/sume/core/format/MediaFormat;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader;->pixelRead:Ljava/util/function/Supplier;

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/buffer/RawDataReader;Lcom/samsung/android/sume/core/format/MediaFormat;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader;->pixelReadByIndex:Ljava/util/function/Function;

    return-void
.end method

.method private blacklist getRawDataRead(Lcom/samsung/android/sume/core/types/DataType;Ljava/nio/ByteBuffer;)Ljava/util/function/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/types/DataType;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/function/Supplier<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda0;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda2;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda3;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda3;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda4;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getRawDataReadByIndex(Lcom/samsung/android/sume/core/types/DataType;Ljava/nio/ByteBuffer;)Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/types/DataType;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda7;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda7;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda8;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda9;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda9;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda10;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda10;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda11;

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda11;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic blacklist lambda$getRawDataRead$0(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRawDataRead$1(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRawDataRead$2(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRawDataRead$3(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRawDataReadByIndex$4(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRawDataReadByIndex$5(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRawDataReadByIndex$6(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRawDataReadByIndex$7(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist get()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader;->pixelRead:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public blacklist get(I)Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader;->pixelReadByIndex:Ljava/util/function/Function;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public bridge synthetic blacklist get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/RawDataReader;->get()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method synthetic blacklist lambda$new$8$com-samsung-android-sume-core-buffer-RawDataReader(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Ljava/util/function/Supplier;
    .locals 0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader;->getRawDataRead(Lcom/samsung/android/sume/core/types/DataType;Ljava/nio/ByteBuffer;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method synthetic blacklist lambda$new$9$com-samsung-android-sume-core-buffer-RawDataReader(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Ljava/util/function/Function;
    .locals 0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/RawDataReader;->getRawDataReadByIndex(Lcom/samsung/android/sume/core/types/DataType;Ljava/nio/ByteBuffer;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0
.end method
