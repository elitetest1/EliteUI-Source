.class Landroid/sax/Children;
.super Ljava/lang/Object;
.source "Children.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/Children$Child;
    }
.end annotation


# instance fields
.field greylist-max-o children:[Landroid/sax/Children$Child;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/sax/Children$Child;

    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    return-void
.end method


# virtual methods
.method greylist-max-o get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit8 v1, v0, 0xf

    iget-object p0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object p0, p0, v1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Landroid/sax/Children$Child;->hash:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    iget-object p0, p0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-nez p0, :cond_0

    return-object v1
.end method

.method greylist-max-o getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v7, v0, v1

    and-int/lit8 v0, v7, 0xf

    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    new-instance v2, Landroid/sax/Children$Child;

    iget v1, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, v1, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aput-object v2, p0, v0

    return-object v2

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    :goto_0
    iget p0, v1, Landroid/sax/Children$Child;->hash:I

    if-ne p0, v7, :cond_1

    iget-object p0, v1, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v1, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-nez p0, :cond_2

    new-instance v2, Landroid/sax/Children$Child;

    iget p0, v3, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, p0, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    return-object v2

    :cond_2
    move-object v1, p0

    goto :goto_0
.end method
