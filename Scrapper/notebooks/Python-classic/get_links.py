import Scrapper.scrapper_utils as scrap

home = 'https://datos.profeco.gob.mx/datos_abiertos/'
page = scrap.requests.get(home+'qqp.php')
tree = scrap.html.fromstring(page.content)
links = tree.xpath('/html/body/main/div/div//@href')
names = tree.xpath('/html/body/main/div/div//a/text()')
clean_year = ['QQP_'+scrap.re.findall(r'\d+',s)[0] for s in names]
pages = dict(zip(clean_year,links))
scrap.download_files(home, pages)