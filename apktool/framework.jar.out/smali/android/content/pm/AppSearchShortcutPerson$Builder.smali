.class public Landroid/content/pm/AppSearchShortcutPerson$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "AppSearchShortcutPerson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AppSearchShortcutPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/GenericDocument$Builder<",
        "Landroid/content/pm/AppSearchShortcutPerson$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, "ShortcutPerson"

    invoke-direct {p0, v0, p1, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/appsearch/GenericDocument;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->build()Landroid/content/pm/AppSearchShortcutPerson;

    move-result-object p0

    return-object p0
.end method

.method public blacklist build()Landroid/content/pm/AppSearchShortcutPerson;
    .locals 1

    new-instance v0, Landroid/content/pm/AppSearchShortcutPerson;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/AppSearchShortcutPerson;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method

.method public blacklist setIcon([B)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "icon"

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_0
    return-object p0
.end method

.method public blacklist setIsBot(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const-string p1, "isBot"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0
.end method

.method public blacklist setIsImportant(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const-string p1, "isImportant"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0
.end method

.method public blacklist setKey(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_0
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_0
    return-object p0
.end method
