.class public Landroid/audio/policy/configuration/V7_0/Modules$Module;
.super Ljava/lang/Object;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Module"
.end annotation


# instance fields
.field private blacklist attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

.field private blacklist defaultOutputDevice:Ljava/lang/String;

.field private blacklist devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

.field private blacklist halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

.field private blacklist mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

.field private blacklist name:Ljava/lang/String;

.field private blacklist routes:Landroid/audio/policy/configuration/V7_0/Routes;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules$Module;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Modules$Module;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Modules$Module;-><init>()V

    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "halVersion"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/HalVersion;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/HalVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setHalVersion(Landroid/audio/policy/configuration/V7_0/HalVersion;)V

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_8

    if-eq v1, v3, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attachedDevices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/AttachedDevices;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setAttachedDevices(Landroid/audio/policy/configuration/V7_0/AttachedDevices;)V

    goto :goto_0

    :cond_3
    const-string v2, "defaultOutputDevice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setDefaultOutputDevice(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "mixPorts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/MixPorts;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setMixPorts(Landroid/audio/policy/configuration/V7_0/MixPorts;)V

    goto :goto_0

    :cond_5
    const-string v2, "devicePorts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/DevicePorts;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setDevicePorts(Landroid/audio/policy/configuration/V7_0/DevicePorts;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "routes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Routes;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setRoutes(Landroid/audio/policy/configuration/V7_0/Routes;)V

    goto :goto_0

    :cond_7
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_8
    if-ne v1, v3, :cond_9

    return-object v0

    :cond_9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Modules.Module is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getAttachedDevices()Landroid/audio/policy/configuration/V7_0/AttachedDevices;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    return-object p0
.end method

.method public blacklist getDefaultOutputDevice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDevicePorts()Landroid/audio/policy/configuration/V7_0/DevicePorts;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    return-object p0
.end method

.method public blacklist getHalVersion()Landroid/audio/policy/configuration/V7_0/HalVersion;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-object p0
.end method

.method public blacklist getMixPorts()Landroid/audio/policy/configuration/V7_0/MixPorts;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    return-object p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRoutes()Landroid/audio/policy/configuration/V7_0/Routes;
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    return-object p0
.end method

.method blacklist hasAttachedDevices()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasDefaultOutputDevice()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasDevicePorts()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasHalVersion()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasMixPorts()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasName()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist hasRoutes()Z
    .locals 0

    iget-object p0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setAttachedDevices(Landroid/audio/policy/configuration/V7_0/AttachedDevices;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    return-void
.end method

.method public blacklist setDefaultOutputDevice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    return-void
.end method

.method public blacklist setDevicePorts(Landroid/audio/policy/configuration/V7_0/DevicePorts;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    return-void
.end method

.method public blacklist setHalVersion(Landroid/audio/policy/configuration/V7_0/HalVersion;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-void
.end method

.method public blacklist setMixPorts(Landroid/audio/policy/configuration/V7_0/MixPorts;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRoutes(Landroid/audio/policy/configuration/V7_0/Routes;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    return-void
.end method
