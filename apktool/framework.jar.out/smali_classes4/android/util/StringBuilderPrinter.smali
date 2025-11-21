.class public Landroid/util/StringBuilderPrinter;
.super Ljava/lang/Object;
.source "StringBuilderPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final greylist-max-o mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public whitelist println(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
