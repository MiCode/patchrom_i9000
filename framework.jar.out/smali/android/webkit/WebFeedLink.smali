.class public Landroid/webkit/WebFeedLink;
.super Ljava/lang/Object;
.source "WebFeedLink.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "title"
    .parameter "type"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebFeedLink;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/WebFeedLink;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/WebFeedLink;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mUrl:Ljava/lang/String;

    return-object v0
.end method
