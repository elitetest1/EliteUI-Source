.class public final Landroid/content/pm/Checksum;
.super Ljava/lang/Object;
.source "Checksum.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/Checksum$Type;,
        Landroid/content/pm/Checksum$TypeMask;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_CHECKSUM_SIZE_BYTES:I = 0x40

.field public static final whitelist TYPE_PARTIAL_MERKLE_ROOT_1M_SHA256:I = 0x20

.field public static final whitelist TYPE_PARTIAL_MERKLE_ROOT_1M_SHA512:I = 0x40

.field public static final whitelist TYPE_WHOLE_MD5:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_WHOLE_MERKLE_ROOT_4K_SHA256:I = 0x1

.field public static final whitelist TYPE_WHOLE_SHA1:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_WHOLE_SHA256:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_WHOLE_SHA512:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValue:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/Checksum$1;

    invoke-direct {v0}, Landroid/content/pm/Checksum$1;-><init>()V

    sput-object v0, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/Checksum;->mType:I

    const-class v0, Landroid/content/pm/Checksum$Type;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p2, p0, Landroid/content/pm/Checksum;->mValue:[B

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput v0, p0, Landroid/content/pm/Checksum;->mType:I

    const-class v1, Landroid/content/pm/Checksum$Type;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p1, p0, Landroid/content/pm/Checksum;->mValue:[B

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    new-instance p0, Landroid/content/pm/Checksum;

    invoke-direct {p0, v0, v1}, Landroid/content/pm/Checksum;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/Checksum;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/content/pm/Checksum;->mType:I

    return p0
.end method

.method public whitelist getValue()[B
    .locals 0

    iget-object p0, p0, Landroid/content/pm/Checksum;->mValue:[B

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/content/pm/Checksum;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/content/pm/Checksum;->mValue:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
