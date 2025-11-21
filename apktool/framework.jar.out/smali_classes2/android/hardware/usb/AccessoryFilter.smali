.class public Landroid/hardware/usb/AccessoryFilter;
.super Ljava/lang/Object;
.source "AccessoryFilter.java"


# instance fields
.field public final greylist-max-o mManufacturer:Ljava/lang/String;

.field public final greylist-max-o mModel:Ljava/lang/String;

.field public final greylist-max-o mVersion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/usb/AccessoryFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public static greylist-max-o read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "manufacturer"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v6

    goto :goto_1

    :cond_0
    const-string v7, "model"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v2, v6

    goto :goto_1

    :cond_1
    const-string v7, "version"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {p0, v1, v2, v3}, Landroid/hardware/usb/AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public greylist-max-o contains(Landroid/hardware/usb/AccessoryFilter;)Z
    .locals 3

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p1, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 3

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    iget-object p4, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v0, 0x10900000002L

    iget-object p4, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v0, 0x10900000003L

    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    const-string p4, "version"

    invoke-virtual {p1, p4, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, p1, Landroid/hardware/usb/AccessoryFilter;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    check-cast p1, Landroid/hardware/usb/AccessoryFilter;

    iget-object v2, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    instance-of v2, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int p0, v0, v1

    return p0
.end method

.method public greylist-max-o matches(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "usb-accessory"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "manufacturer"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "model"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object p0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v2, "version"

    invoke-interface {p1, v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
