describe 'Mouse Hover', :hovers do

    before(:each) do
    visit '/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        card = find('img[alt*=Blade]') # (*) significa contém
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt^=Pantera]') # (^) significa começa com   // #utiliza-se aspas duplas pois no seletor css tem caracter especial (espaço)
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        card = find('img[alt$=Aranha]') # ($) significa termina com
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each)do
        sleep 2
    end
end