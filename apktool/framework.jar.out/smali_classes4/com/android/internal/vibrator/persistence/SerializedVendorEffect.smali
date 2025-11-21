.class final Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
.super Ljava/lang/Object;
.source "SerializedVendorEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedVendorEffect$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
        "Landroid/os/VibrationEffect$VendorEffect;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public blacklist deserialize()Landroid/os/VibrationEffect$VendorEffect;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-static {p0}, Landroid/os/VibrationEffect;->createVendorEffect(Landroid/os/PersistableBundle;)Landroid/os/VibrationEffect;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect$VendorEffect;

    return-object p0
.end method

.method public bridge synthetic blacklist deserialize()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->deserialize()Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SerializedVendorEffect{vendorData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "vibration-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    sget-object p0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public blacklist writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    sget-object p0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "vendor-effect"

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object p0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
