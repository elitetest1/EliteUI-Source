.class public final Landroid/hardware/camera2/CameraCharacteristics$Key;
.super Ljava/lang/Object;
.source "CameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/Class;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;J)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object p1, p1, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-object p0
.end method

.method public greylist-max-o getVendorId()J
    .locals 2

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getVendorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CameraCharacteristics.Key(%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
