.class public Landroid/blockchain/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/blockchain/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist DEBUG:Z = true

.field public static final blacklist HEADER_SIZE:I = 0x64

.field public static final blacklist MAX_BUFFER_SIZE:I = 0x500000

.field public static final blacklist MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final blacklist PAYLOAD_SIZE:I = 0xb9c

.field private static final blacklist TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public blacklist mCommandId:I

.field public blacklist mLength:I

.field public blacklist mMagicNum:[B

.field public blacklist mOffset:I

.field public blacklist mRequest:[B

.field public blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/blockchain/TACommandRequest$1;

    invoke-direct {v0}, Landroid/blockchain/TACommandRequest$1;-><init>()V

    sput-object v0, Landroid/blockchain/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    iput v2, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor blacklist <init>(I[BIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    iput-object p2, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iput p4, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    iput p5, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    iput-object p6, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    iput v2, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    invoke-virtual {p0, p1}, Landroid/blockchain/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/blockchain/TACommandRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/blockchain/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist disassemble()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/blockchain/TACommandRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v1, v1

    const/16 v2, 0xb9c

    const-string v3, "TACommandRequest"

    if-gt v1, v2, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no need to divide the mRequest, len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    sget-boolean v1, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dividing the mRequest, len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    add-int/lit16 v1, v9, 0xb9c

    iget v8, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    const-string v2, " to "

    const-string v11, "generating the chunk from "

    if-ge v1, v8, :cond_4

    sget-boolean v4, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v2, v9, 0xb9b

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v4, Landroid/blockchain/TACommandRequest;

    iget v5, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    iget-object v6, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    iget v7, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iget v8, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    iget-object v2, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    invoke-static {v2, v9, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Landroid/blockchain/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Landroid/blockchain/TACommandRequest;

    iget v5, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    iget-object v6, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    iget v7, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iget-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    invoke-static {v1, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Landroid/blockchain/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method public blacklist dump()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command ID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TACommandRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Length = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-byte v4, v4, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v4, v4

    if-eq v3, v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/mnt/sdcard/sendbuf.txt"

    invoke-direct {v1, v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_1
    move-object p0, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_2
    move-object p0, v0

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_9
    throw p0
.end method

.method public blacklist getChunkOffset()I
    .locals 0

    iget p0, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    return p0
.end method

.method public blacklist getPayload()[B
    .locals 0

    iget-object p0, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    return-object p0
.end method

.method public blacklist getTotalLength()I
    .locals 0

    iget p0, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    return p0
.end method

.method public blacklist init(I[BI[B)V
    .locals 0

    iput p1, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    iput-object p2, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iput-object p4, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    array-length p2, p4

    iput p2, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    :goto_0
    iput p1, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget p2, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
