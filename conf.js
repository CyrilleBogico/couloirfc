const http = require("http");
const host = 'localhost';
const port = 8000;

const server = http.createServer((req, res) =>
{
    switch (req.url) {
        case "/":
            // page accueil
            res.writeHead(200,
            {"content-type": "text/html"});
            res.end("<h1>Accueil</h1>");
            break;
            case "/equipe":
                //page equipe
                res.writeHead(200,
                {"content-type": "text/html"});
                res.end("<h1>Equipe</h1>");
                break;
            case "/calendrier":
                //page calendrier
                res.writeHead(200,
                {"content-type": "text/html"});
                res.end("<h1>Calendrier</h1>");
                break;
            case "/actualites":
                //page actualites
                res.writeHead(200,
                {"content-type": "text/html"});
                res.end("<h1>Actualites</h1>");
                break;
            case "/boutique":
                //page boutique
                res.writeHead(200,
                {"content-type": "text/html"});
                res.end("<h1>Boutique</h1>");
                break;
            case "/galerie":
                //page galerie
                res.writeHead(200,
                {"content-type": "text/html"});
                res.end("<h1>Galerie</h1>");
                break;
            case "/classement":
                //page classement
                res.writeHead(200,
                {"content-type": "text/html"});
                res.end("<h1>Classement</h1>");
                break;
            case "/contact":
                //page contact
                res.writeHead(200,
                {"content-type": "text/html"});
                res.end("<h1>Contact</h1>");
                break;
                default:
                //page non trouvee
                res.writeHead(404,{"Content-Type":"text/html"});
                res.end("<h1>page non trouvee</h1>");
    }
});

server.listen(port, host, () =>
{
    console.log('server is running on http://${host}:${port}');
});