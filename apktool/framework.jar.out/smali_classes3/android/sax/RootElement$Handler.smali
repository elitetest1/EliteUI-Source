.class Landroid/sax/RootElement$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field greylist-max-o bodyBuilder:Ljava/lang/StringBuilder;

.field greylist-max-o current:Landroid/sax/Element;

.field greylist-max-o depth:I

.field greylist-max-o locator:Lorg/xml/sax/Locator;

.field final synthetic blacklist this$0:Landroid/sax/RootElement;


# direct methods
.method constructor blacklist <init>(Landroid/sax/RootElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/sax/RootElement$Handler;->depth:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget p2, p0, Landroid/sax/RootElement$Handler;->depth:I

    iget p3, p1, Landroid/sax/Element;->depth:I

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {p1, p2}, Landroid/sax/Element;->checkRequiredChildren(Lorg/xml/sax/Locator;)V

    iget-object p2, p1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    invoke-interface {p2}, Landroid/sax/EndElementListener;->end()V

    :cond_0
    iget-object p2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    iput-object p3, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    invoke-interface {p3, p2}, Landroid/sax/EndTextElementListener;->end(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Landroid/sax/Element;->parent:Landroid/sax/Element;

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    :cond_2
    iget p1, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/sax/RootElement$Handler;->depth:I

    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method greylist-max-o start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V
    .locals 1

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    invoke-interface {v0, p2}, Landroid/sax/StartElementListener;->start(Lorg/xml/sax/Attributes;)V

    :cond_0
    iget-object p2, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Landroid/sax/Element;->resetRequiredChildren()V

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroid/sax/Element;->visited:Z

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget p3, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Landroid/sax/RootElement$Handler;->depth:I

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Landroid/sax/RootElement$Handler;->startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget v0, v0, Landroid/sax/Element;->depth:I

    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object p3, p3, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Landroid/sax/Children;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p4}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroid/sax/BadXmlException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Encountered mixed content within text element named "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p1, p2, p0}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1
.end method

.method greylist-max-o startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    iget-object v1, v0, Landroid/sax/Element;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p3}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_0
    new-instance p3, Landroid/sax/BadXmlException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root element name does not match. Expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Got: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p3, p1, p0}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p3
.end method
